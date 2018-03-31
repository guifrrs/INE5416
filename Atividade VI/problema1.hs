type Nome = String
type Disciplina = String
type Nota = Int
type Aluno = (Nome, Disciplina, Nota, Nota, Nota)

aluno :: Int -> Aluno
aluno 0 = ("Maria", "Teoria da Computacao", 1, 1, 1)
aluno 1 = ("Joao", "Compiladores", 2, 2, 2)
aluno 2 = ("Cleverson", "Sistemas Digitais", 3, 3, 3)

getNome :: Aluno -> Nome
getNome (n, _, _, _, _) = n

getMedia :: Aluno -> Nota
getMedia (_, _, a, b, c) = (a + b + c) `div` 3

getMediaTurma :: Int -> Nota
getMediaTurma x | (x == 3) = 0
                | otherwhise = getMedia (aluno x) + (getMediaTurma (x+1))

main = do
  putStrLn  (show (aluno 0))  -- Maria
  putStrLn (show (getNome (aluno 1))) -- Joao
  putStrLn (show (getMedia (aluno 2)))  -- Cleverson
  putStrLn (show (getMediaTurma 0)) -- Turma
