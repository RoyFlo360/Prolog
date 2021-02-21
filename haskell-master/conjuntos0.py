#union. inter, A-b, B-A
import os
A, B = [], []
n = int(input('Cuantos elementos tiene sus conjunto A?\n'))
for i in range(n):
	elemento = str(input('Dame el elemento '+ str(i + 1) + ': '))
	A.append(elemento)
	os.system("cls")
n = int(input('Cuantos elementos tiene sus conjunto B?\n'))
for i in range(n):
	elemento = str(input('Dame el elemento '+ str(i + 1) + ': '))
	print(elemento)
	B.append(elemento)
	os.system("cls")
setA = set(A)
setB = set(B)
print("A = " + str((setA)))
print("B = " + str((setB)))
print("Union = " + str (setA.union(setB)))
print("Intersection = " + str(setA.intersection(setB)))
print("A-B = " + str(setA.difference(setB)))
print("B-A = " + str(setB.difference(setA)))