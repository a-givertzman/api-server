import datetime
from typing import Generic, TypeVar
# from src.infrostructure.core.parse_json import ParseJson


T = TypeVar('T')
class Result(Generic[T]):
    def __init__(self,
        time: datetime.datetime | None = None,
        data: T | None = None,
        error: Exception | None = None,
    ) -> None:
        self.hasData = data != None
        self.hasError = error != None
        self.__error = error
        self.__data = data
        self.time = time

    @property
    def data(self) -> T:
        if self.__data != None:
            return self.__data
        else:
            raise Exception(f'Result hasn`t data (data: {self.__data})')

    @property
    def error(self) -> Exception:
        if self.__error:
            return self.__error
        else:
            raise Exception(f'Result hasn`t data (data: {self.__data})')

    # @classmethod
    # def fromParseJson(cls, parseJson: ParseJson):
    #     return Result(
    #         data = parseJson.data,
    #         error = parseJson.errDump,
    #     )

    def __repr__(self):
        return f'Result( hasData: {self.hasData} \
| hasError: {self.hasError} | time: {self.time} \n\t\
| data: {self.__data if self.hasData else None} \n\t\
| error: {self.__error if self.hasError else None} )'


T = TypeVar('T')
class ReadResult(Generic[T]):
    def __init__(self,
        time: datetime.datetime,
        data: T | None = None,
        error: Exception | None = None,
    ) -> None:
        self.hasData = data != None
        self.hasError = error != None
        self.error = error
        self.data = data
        self.time = time
    def __repr__(self):
        return f'ReadResult( hasData: {self.hasData} | hasError: {self.hasError} | time: {self.time} \n\t| data: {self.data} \n\t| error: {self.error} )'


class CancelResult:
    def __init__(self,
        error: Exception | None = None,
        done: bool = False,
        code: int | None = None,
    ) -> None:
        self.hasError = error != None
        self.done = done
        self.error = error
        self.code = code
    def __repr__(self):
        return f'ReadResult( done: {self.done} | hasError: {self.hasError} \n\t| code: {self.code} | error: {self.error} )'

