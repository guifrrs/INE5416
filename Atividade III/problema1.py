print ("Qualquer letra pra True / Em branco pra False:")
x = input()

print ("Qualquer letra pra True / Em branco pra False:")
y = input()

xor = (lambda x, y: x != y)
print (xor(x, y))