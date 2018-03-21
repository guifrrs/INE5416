from math import sqrt

a = int(input("Digite A: "))
b = int(input("Digite B: "))
c = int(input("Digite C: "))

x1 = (lambda a, b, c: (- b + sqrt((b * b) - 4 * a * c)) / 2 * a)
x2 = (lambda a, b, c: (- b - sqrt((b * b) - 4 * a * c)) / 2 * a)
bhaskara = (lambda a, b, c: (x1(a, b, c), x2(a, b, c)))

print(bhaskara(a, b, c))