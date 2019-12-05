apart = [[4], [3], [3,4], [2], [2,4], [2,3], [2,3,4], [1], [1,4]]

floor1 = int(input())
floor2 = int(input())

s1 = set(apart[floor1-1])
s2 = set(apart[floor2-1])

i = s1.intersection(s2)
u = s1.union(s2)

print(len(u))
print(len(i))
