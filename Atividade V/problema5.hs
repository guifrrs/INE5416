busca :: [Int] -> Int -> Bool
busca [] i = False
busca (x:xs) i
  | x == i = True
  | otherwise = busca xs i

main = do
  putStrLn "Lista de Numeros:"
  a <- getLine
  putStrLn "Numero a ser buscado:"
  b <- getLine
  let x = (read a :: [Int])
  let y = (read b :: Int)
  print (busca x y)