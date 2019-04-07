import sys
print(sys.executable)

with open(sys.argv[1], 'w') as out:
    out.write('testfile\n')