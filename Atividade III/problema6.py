x = int(input("Primeiro numero: "))
y = int(input("Segundo numero: "))
z = int(input("Terceiro numero: "))

maiorX = (lambda x, y, z: x if (x > y) and (x > z) else 0)
maiorY = (lambda x, y, z: y if (y > z) and (y > x) else 0)
maiorZ = (lambda x, y, z: z if (z > y) and (z > x) else 0)

maior = (lambda x, y, z: maiorX(x, y, z) + maiorY(x, y, z) + maiorZ(x, y, z))

print(maior(x, y, z))