import uuid
import atexit
import socket
import logging
from time import sleep
import app_logger as app_logger
from typing import Any, Callable
from result import Result

LOGGING_LEVEL = logging.DEBUG
IPV4 = socket.AF_INET
TCP = socket.SOCK_STREAM

class DsSocket:
    def __init__(self,
        address:tuple[str, int],
        reconnectTimeout: int = 3000,        # milliseconds
        reconnectAttempts: int = 3,
        onConnected: Callable[[socket.socket], None] | None = None,
        name: str = '',
        auto: bool = False,
    ) -> None:
        atexit.register(self.close)
        self.__name = name
        if self.__name:
            self.log = app_logger.get_logger(f'DsSocket({self.__name} - {uuid.uuid1()})', level = LOGGING_LEVEL)
        else:
            self.log = app_logger.get_logger(f'DsSocket({uuid.uuid1()})', level = LOGGING_LEVEL)
        atexit.register(self.close)
        self.__onConnected = onConnected
        self.__address = address
        self.__reconnectTimeout = reconnectTimeout
        self.__reconnectAttempts = reconnectAttempts
        self.__socket: socket.socket | None = None
        self.__auto = auto

    def bind(self):
        pass
    def connect(self):
        self.log.warning(f'connecting...')
        attempts = self.__reconnectAttempts * 1
        while (self.isClosed and attempts > 0):
            self.log.warning(f'creating new cocket...')
            try:
                self.__socket = None
                self.__socket = socket.socket(IPV4, TCP)
                self.log.warning(f'creating new cocket - ok')
            except OSError as error:
                self.log.error(f'open socket failed:\n\t{type(error)}\n\t{error.args}')
                self.__socket = None
                if self.__reconnectTimeout: 
                    sleep(self.__reconnectTimeout / 1000)
                    continue
                else:
                    break
            try:
                self.__socket.connect(self.__address)
                self.log.info(f'connected to:\n\t{self.__socket}')
                self.__connected = True
                # self.__socket.settimeout(0.5)
                # self.__socket.setsockopt(socket.IPPROTO_TCP, socket.TCP_NODELAY, True)  # True - disable Nagle Algorithm
                if callable(self.__onConnected): 
                    self.__onConnected(self.__socket)
            except OSError as error:
                self.log.warning(f'connect error:\n\t{type(error)}\n\t{error.args}')
                self.close()
                if self.__reconnectTimeout: 
                    sleep(self.__reconnectTimeout / 1000)
                    continue
                else:
                    break
            attempts -= 1

    def send(self, buf: bytes) -> Result[int]:
        if self.__auto:
            self.log.debug(f'mode - auto')
            if self.isClosed:
                self.log.debug(f'autoconnect...')
                self.connect() 
        self.log.debug(f'rtying to send...')
        if self.__socket and self.isConnected:
            self.log.debug(f'connected - ok')
            bufLen = len(buf)
            totalSent = 0
            while totalSent < bufLen:
                sent = self.__socket.send(buf[totalSent:])
                if sent == 0:
                    self.log.warning(f'socket connection broken')
                    return Result(error = RuntimeError("socket connection broken"))
                totalSent += sent
            return Result(data = totalSent)
        else:
            msg = 'Not connected'
            self.log.warning(msg)
            return Result(error = Exception(msg))

    def read(self) -> Result[bytes]:
        if self.__auto:
            self.log.debug(f'mode - auto')
            if self.isClosed:
                self.log.debug(f'autoconnect...')
                self.connect() 
        data = bytearray()
        if self.__socket and self.isConnected:
            self.log.debug(f'connected - ok')
            buff_size = 4096
            while self.isConnected:
                self.log.debug(f'reading chunk...')
                try:
                    chunk = self.__socket.recv(buff_size)
                except Exception as err:
                    return Result(error = err)
                self.log.debug(f'chunk: {len(chunk)} bytes / {buff_size}')
                if chunk == b'':
                    break
                data.extend(chunk)
                if len(chunk) < buff_size:
                    break
            return Result(data = data)
        else:
            msg = 'Not connected'
            self.log.warning(msg)
            return Result(error = Exception(msg))

    @property
    def isConnected(self) -> bool:
        return not self.isClosed
    
    @property
    def isClosed(self) -> bool:
        if self.__socket:
            try:
                # this will try to read bytes without blocking and also without removing them from buffer (peek only)
                data = self.__socket.recv(16, socket.MSG_DONTWAIT | socket.MSG_PEEK)
                if len(data) == 0:
                    return True
            except BlockingIOError:
                return False  # socket is open and reading from it would block
            except ConnectionResetError:
                return True  # socket was closed for some other reason
            except Exception as err:
                self.log.warning(f'unexpected socket exception: {err}')
                return False
            return False
        return True

    def close(self):
        self.__connected = False
        if self.__socket:
            self.__socket.close()
        self.log.debug(f'socket closed: {self.__socket}')
        self.__socket = None

    def __repr__(self) -> str:
        if self.__connected:
            return f'DsSocket({self.__name}) connected to:\n\t{self.__socket}'
        else:
            return f'DsSocket({self.__name}) NOT CONNECTED, socket:\n\t{self.__socket}'

    def __del__(self):
        self.log.info(f'deleted')
