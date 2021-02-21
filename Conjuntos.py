import os
def potencia(c):
    """Calcula y devuelve el conjunto potencia del 
       conjunto c.
    """
    if len(c) == 0:
        return [[]]
    r = potencia(c[:-1])
    return r + [s + [c[-1]] for s in r]

def printSort(c):
    #ordena la salida de potencia
    for i in sorted(c, key=lambda s: (len(s), s)):
        print(i)

c=[]
n = int(input("Cuantos elementos vas a agregar?\n"))
for i in range (0,n):
    os.system("cls")
    e = 'Dame el elemento '+ str(i+1) +':'
    print(e)
    c.append((input()))
    print(" ")
print("Conjunto " + str(c))
print(printSort(potencia(c)))
