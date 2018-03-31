menor :: [Int] -> Int
menor [] = 0
menor (a:b) | (a < b) = a
            | otherwise = b

main = do
  putStrLn "Lista de numeros:"
  a <- getLine
  let x = (read a :: [Int])
  print (menor x)