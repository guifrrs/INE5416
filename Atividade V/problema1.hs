soma :: [Int] -> Int
soma [] = 0
soma (x:xs) = x + soma xs

main = do 
  putStrLn "Lista de numeros:"
  a <- getLine
  let x = (read a :: [Int])
  print (soma x)