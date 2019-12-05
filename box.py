total = int(input())

weigh, big, small = 0, 0, 0

while(total>=10):
    big += 1
    weigh += 18
    total -= 10

if(total>5):
    weigh += total + 8
    big += 1
else:
    weigh += total + 5
    small += 1

print(big)
print(small)
print(weigh)
