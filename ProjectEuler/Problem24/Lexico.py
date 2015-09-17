from itertools import permutations
def allPermutationsOf(str):
	return [''.join(p) for p in permutations(str)]
	
perms = allPermutationsOf("0123456789")
print(perms[999999])