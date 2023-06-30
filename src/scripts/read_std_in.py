import sys
import json

for line in sys.stdin:
    if 'Exit' == line.rstrip():
        break
    parsed = json.loads(line)
    print(f'sys.stdin line: {line}')
    print(f'parsed json line: {parsed}')
print("Done")