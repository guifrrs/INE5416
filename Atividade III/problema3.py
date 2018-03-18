fib = (lambda x: x if (x < 2) else fib(x - 1) + fib(x - 2))

print("N-esimo numero:")
x = int(input())

print(fib(x))