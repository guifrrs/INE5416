soma :: [Int] -> Int
soma [] = 0
soma (a:b) = a + soma b

comprimento :: [Int] -> Int
comprimento [] = 0
comprimento (_:b) = 1 + comprimento b

media :: [Int] -> Float
media [] = 0
media (a:b) = (fromIntegral (soma b)) / (fromIntegral (comprimento b))

main = do
  putStrLn "Lista de numeros:"
  a <- getLine
  let x = (read a :: [Int])
  print (media x)