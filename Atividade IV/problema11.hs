euclides :: Int -> Int -> Int
euclides x y  | (x == 0) = y
              | otherwise = (euclides (y `mod` x) x)

main = do
  putStrLn "Primeiro numero: "
  a <- getLine
  putStrLn "Segundo numero: "
  b  <- getLine
  let x = (read a :: Int)
  let y = (read b :: Int)
  print(euclides x y)