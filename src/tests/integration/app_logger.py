import logging

class ConsoleColors:
    reset = '\x1b[0m'           # reset
    bright = '\x1b[1m'
    dim = '\x1b[2m'
    underscore = '\x1b[4m'
    blink = '\x1b[5m'
    reverse = '\x1b[7m'
    hidden = '\x1b[8m'    
    
    # Regular foreground
    fgBlack='\x1b[0;30m'        # Black
    fgRed='\x1b[0;31m'          # Red
    fgGreen='\x1b[0;32m'        # Green
    fgYellow='\x1b[0;33m'       # Yellow
    fgBlue='\x1b[0;34m'         # Blue
    fgPurple='\x1b[0;35m'       # Purple
    fgCyan='\x1b[0;36m'         # Cyan
    fgWhite='\x1b[0;37m'        # White
    fgGray = '\x1b[90m'

    # Bold
    fgBoldBlack='\033[1;30m'       # Black
    fgBoldRed='\033[1;31m'         # Red
    fgBoldGreen='\033[1;32m'       # Green
    fgBoldYellow='\033[1;33m'      # Yellow
    fgBoldBlue='\033[1;34m'        # Blue
    fgBoldPurple='\033[1;35m'      # Purple
    fgBoldCyan='\033[1;36m'        # Cyan
    fgBoldWhite='\033[1;37m'       # White

    # Regular background
    bgBlack = '\x1b[40m'
    bgRed = '\x1b[41m'
    bgGreen = '\x1b[42m'
    bgYellow = '\x1b[43m'
    bgBlue = '\x1b[44m'
    bgMagenta = '\x1b[45m'
    bgCyan = '\x1b[46m'
    bgWhite = '\x1b[47m'
    bgGray = '\x1b[100m'

class CustomFormatter(logging.Formatter):
    
    
    def __init__(self, fmt=None, datefmt=None, style='%', validate=True, defaults=None):
        fmtStr = str(fmt)
        self.FORMATS = {
            logging.DEBUG: ConsoleColors.fgBlue + fmtStr + ConsoleColors.reset,
            logging.INFO: ConsoleColors.fgGray + fmtStr + ConsoleColors.reset,
            logging.WARNING: ConsoleColors.fgYellow + fmtStr + ConsoleColors.reset,
            logging.ERROR: ConsoleColors.fgRed + fmtStr + ConsoleColors.reset,
            logging.CRITICAL: ConsoleColors.fgBoldRed + fmtStr + ConsoleColors.reset
        }
        super().__init__(fmt, datefmt, style, validate, defaults=defaults) # type: ignore


    def format(self, record):
        log_fmt = self.FORMATS.get(record.levelno)
        formatter = logging.Formatter(log_fmt)
        return formatter.format(record)
    

# _log_format = "%(asctime)s - %(name)s - %(levelname)s - %(message)s (%(filename)s:%(lineno)d)"
# _log_format = f"%(asctime)s - [%(levelname)s] - %(name)s - (%(filename)s).%(funcName)s(%(lineno)d) - %(message)s"
_log_format = f"%(asctime)s | %(levelname)s | %(name)s.%(funcName)s(%(lineno)d) | %(message)s"

def get_stream_handler(format, level):
    stream_handler = logging.StreamHandler()
    stream_handler.setLevel(level)
    stream_handler.setFormatter(logging.Formatter(format))
    return stream_handler

def get_file_handler(format, level):
    file_handler = logging.FileHandler("app.log")
    file_handler.setLevel(level)
    file_handler.setFormatter(logging.Formatter(format))
    return file_handler

def get_logger(name, format = _log_format, level = logging.INFO, fileName = None, color=True):
    logger = logging.getLogger(name)
    # logging.basicConfig(datefmt='%H:%M:%S')
    logger.setLevel(level)
    if (fileName != None):
        logger.addHandler(get_file_handler(format, level))
    streamHandler = get_stream_handler(format, level)
    if (color):
        streamHandler.setFormatter(
            CustomFormatter(
                fmt = format,
                datefmt='%H:%M:%S'
            )
        )
    else:
        streamHandler.setFormatter(
            logging.Formatter(
                fmt = format,
                datefmt='%H:%M:%S'
            )
        )
    logger.addHandler(streamHandler)
    return logger
