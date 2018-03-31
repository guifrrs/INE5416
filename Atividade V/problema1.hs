soma :: [Int] -> Int
soma [] = 0
soma (a:b) = a + soma b

main = do 
  putStrLn "Lista de numeros:"
  a <- getLine
  let x = (read a :: [Int])
  print (soma x)