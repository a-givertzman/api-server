import sys
import json

for line in sys.stdin:
    if 'Exit' == line.rstrip():
        break
    parsed = json.loads(line)

    # your code...

    result = {
        "aa": parsed['a'] * 2,
        "bb": parsed['b'] * 2,
    }
print(
    json.dumps(result)
)