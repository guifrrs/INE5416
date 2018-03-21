x = float(input("Nota 1: "))
y = float(input("Nota 2: "))
z = float(input("Nota 3: "))

media = (lambda x, y, z: (x + y + z) / 3)
aprovado = (lambda x: "Reprovado" if x < 6 else "Aprovado")

print(aprovado(media(x, y, z)))
