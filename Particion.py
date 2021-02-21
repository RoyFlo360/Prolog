def printPyramid(p, m):
	for i in range(0, m):
		print(str(p[i]) + "+", end = '')
	print()
def printPartitions(m):
	p = [0] * m
	i = 0
	p[i] = m
	while (True):
		printPyramid(p, i + 1)
		remv = 0
		while (i >= 0 and p[i] == 1):
			remv += p[i]
			i -= 1
		if (i < 0):
			return
		p[i] -= 1
		remv += 1
		while (remv > p[i]):
			p[i + 1] = p[i]
			remv = remv - p[i]
			i += 1
		p[i + 1] = remv
		i += 1

num = int(input("Numero a particionar:\n"))
print("All Unique Partitions of " + str(num) + " :\n")
printPartitions(num);
