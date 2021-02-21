def isPrime (n):
    if n <= 1:
         return False 
    for i in range (2,( int (n ** 0.5) +1)):
        if n% i == 0:
             return False
    return True 

n = int(input("n: "))

for x in range (2, n): 
    y = n - x
    if isPrime (x) == 1 and isPrime (y) == 1:
        	print ("{:d} = {:d} + {:d} " .format (n, x, y)) 
        	break
