fib = [1,1]
while not len(str(fib[-1])) >= 1000:
	fib.append(fib[-1]+fib[-2])
print(len(str(fib[-1])))