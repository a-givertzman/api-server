import sys
import json

def main():
    # reading input params from stdin
    lines = sys.stdin.read()
    # parsing input params from the string
    parsed = json.loads(lines)


    # your code...
    # you can do some calculations
    # you cam use some data stored in the databases


    # build map to be returned to the frontend
    result = {
        "aa": parsed['a'] * 2,
        "bb": parsed['b'] * 2,
    }


    # returning data to the frontend
    print(
        json.dumps(result)
    )

if __name__ == '__main__':
    main()