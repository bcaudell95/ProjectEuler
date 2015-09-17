def multOrderOf(n):
	i=1
	while not 10**i % n == 1:
		i +=1
		if i>1000:
			return 0
	return i
	
orders = [multOrderOf(x) for x in range(1000)[2:]]
for i in range(len(orders)):
	if orders[i] == max(orders):
		print(i)