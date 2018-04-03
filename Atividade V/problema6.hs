ocorrencias :: [Int] -> Int -> Int
ocorrencias [] i = 0
ocorrencias (x:xs) i
  | x == i = 1 + ocorrencias xs i
  | otherwise = ocorrencias xs i

main = do
  putStrLn "Lista de Numeros:"
  a <- getLine
  putStrLn "Numero a ser buscado:"
  b <- getLine
  let x = (read a :: [Int])
  let y = (read b :: Int)
  print (ocorrencias x y)