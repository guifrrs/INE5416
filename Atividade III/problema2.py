media = (lambda x, y, z: (x + y + z) / 3)
aprovado = (lambda x: "Reprovado" if x < 6 else "Aprovado")

print ("Nota 1:")
x = float(input())

print ("Nota 2:")
y = float(input())

print ("Nota 3:")
z = float(input())

print(aprovado(media(x, y, z)))
