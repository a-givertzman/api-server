import sys
import json

for line in sys.stdin:
    if 'Exit' == line.rstrip():
        break
    parsed = json.loads(line)
    result = {
        "a": parsed['a'] * 2,
        "b": parsed['b'] * 2,
    }
    
    # print(f'sys.stdin line: {line}')
    # print(f'parsed json line: {parsed}')
print(result)
# print(
#     json.dumps(result)
# )