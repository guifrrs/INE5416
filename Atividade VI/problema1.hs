type Nome = String
type Disciplina = String
type Nota = Int
type Aluno = (Nome, Disciplina, Nota, Nota, Nota)

aluno :: Int -> Aluno
aluno 0 = ("Maria", "Teoria da Computacao", 10, 7, 9)
aluno 1 = ("Joao", "Compiladores", 6, 6, 6)
aluno 2 = ("Cleverson", "Sistemas Digitais", 5, 3, 2)

getNome :: Aluno -> Nome
getNome (n, _, _, _, _) = n

getMedia :: Aluno -> Nota
getMedia (_, _, a, b, c) = (a + b + c) `div` 3

mediaTotal :: Int -> Nota
mediaTotal x  | (x < 3) = getMedia(aluno (x)) + (mediaTotal (x+1))
              | otherwise = 0

getMediaTurma :: Nota -> Float
getMediaTurma x = (fromIntegral x) / 3

main = do
  putStrLn (show (aluno 0))
  putStrLn (show (getNome (aluno 1)))
  putStrLn (show (getMedia (aluno 2)))
  putStrLn (show (getMediaTurma (mediaTotal 0)))
