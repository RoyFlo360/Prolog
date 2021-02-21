import numpy as np
import numpy.linalg as la
import os
def fillM():
    n = int(input('De que dimension es la matriz nxn?\nn = '))
    matriz = np.zeros((n,n))
    for i in range(n):
    	for j in range(n):
    		matriz[(i),(j)] = float(input('Dame el elemento ' + '[' + str(i + 1) + ',' + str(j + 1) + ']: \n'))
    os.system("clear")
    return np.matrix(matriz)
nM = fillM()
print("Matrix\n", nM, "\n")
print("Determinant: ", la.det(nM))
