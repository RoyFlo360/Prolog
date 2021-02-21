import os
n = int(input("Dame el valor de i\n"))
os.system("cls")
print("Bits")
for i in range (2**(n-1)):
 print("Bit # "+ str(i) + ": " + str(2**i)) 