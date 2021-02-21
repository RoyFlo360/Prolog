#!/usr/bin/env pthon3


def imprime(p):
    for elemento in p:
        print(elemento, end='')
    print()


def permuta(p, u, c):
    for i in range(len(p)):
        if not u[i]:
            p[c] = i + 1
            c += 1
            u[i] = True
            if c == len(p):
                imprime(p)
            else:
                permuta(p, u, c)
            c -= 1
            u[i] = False

def inversiones(p):
    inv = 0
    for i in len(p):
        for j in len(i+1, p):
            if p[i] > p[j]:
                inv += 1
    return inv

def det(m, p):
    prod = 1
    
        

def main():
    n = int(input("Ingrese la dimension del arreglo: "))
    c = 0
    p = [0 for _ in range(n)]
    u = [False for _ in range(n)]
    m = [[0 for _ in range(n)] for _ in range(n)]
    permuta(p, u, c)


if __name__ == '__main__':
        try:
            main()
        except KeyboardInterrupt:
            print("\nSaliendo...")

