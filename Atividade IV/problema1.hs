potencia :: Int -> Int -> Int
potencia x y  
  | (y == 1) = x
  | otherwise = x * (potencia x (y-1))

main = do
  putStrLn "Primeiro numero:"
  a <- getLine
  putStrLn "Segundo numero:"
  b <- getLine
  let x = (read a :: Int)
  let y = (read b :: Int)
  print (potencia x y)