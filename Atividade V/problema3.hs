menor :: [Int] -> Int
menor [] = 0
menor [x] = x
menor (x:xs)
  | x < less = x
  | otherwise = less
  where less = menor xs

main = do
  putStrLn "Lista de numeros:"
  a <- getLine
  let x = (read a :: [Int])
  print (menor x)