from math import sqrt

print("-- Use o formato x y z --")
P1 = input("P1: ").split()
P2 = input("P2: ").split()

P1 = [float(i) for i in P1]
P2 = [float(i) for i in P2]
P = P1 + P2 # Concatena as duas listas.

soma = (lambda x1, x2: (x2 - x1) * (x2 - x1))
distancia = (lambda x1, y1, z1, x2, y2, z2: sqrt(soma(x1, x2) + soma(y1, y2) + soma(z2, z1)))

print(distancia(*P))