alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

getNome :: (Int, String, Float) -> String
getNome (a,b,c) = b

getPrimeiroAluno :: [(Int, String, Float)] -> (Int, String, Float)
getPrimeiroAluno (a:_) = a

gerarPares l1 l2 = [(a, b) | (id1, a, _) <- l1, (id2, b, _) <- l2, id1 /= id2]

aprovados :: [(Int, String, Float)] -> [String]
aprovados x = map (getNome) (filter (apv) x)

apv (_, _, n) = n >= 6

main = do
    print (getPrimeiroAluno alunos)