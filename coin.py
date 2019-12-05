money = int(input())
coin = 0
digit = [500, 100, 50, 10, 1]

for i in digit:
    coin = int(money/i)
    money = money%i
    print(coin, end=' ')
