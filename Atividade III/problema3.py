x = int(input("N-esimo numero:"))

fib = (lambda x: x if (x < 2) else fib(x - 1) + fib(x - 2))

print(fib(x))