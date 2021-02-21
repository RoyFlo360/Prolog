import os
def part(c):
    if len(c) == 1:
        yield[ c ]
        return
    begin = c[0]
    for i in part(c[1:]):
        for n, subC in enumerate(i):
            yield i[:n] + [[begin] + subC] + i[n + 1:]
        yield [ [begin] ] + i
c = []
n = int(input("Dame cuantos elementos tiene tu conjunto:\n"))
for i in range (0,n):
    os.system("clear")
    c.append((input('Dame el elemento '+ str(i+1) +':\n')))
print("Conjunto: " + str(set(c)))
for n, p in enumerate(part(c), 1):
    print(set(map(tuple, p)))
