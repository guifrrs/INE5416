lista = input("Insira a lista: ").split()
lista = [int(i) for i in lista]

par_impar = (lambda x: "Par" if (x % 2 == 0) else "Impar")
novaLista = list(map(par_impar, lista))

print(lista)
print(novaLista)