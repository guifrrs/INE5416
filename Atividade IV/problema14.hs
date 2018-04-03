euclides :: Int -> Int -> Int
euclides x y 
  | (x == 0) = y
  | otherwise = (euclides (y `mod` x) x)

coprimos :: Int -> Int -> [Char]
coprimos x y
  | (euclides x y) == 1 = "Coprimos"
  | otherwise = "Nao sao coprimos"

main = do
  putStrLn "Primeiro numero:"
  a <- getLine
  putStrLn "Segundo numero:"
  b <- getLine
  let x = (read a :: Int)
  let y = (read b :: Int)
  print (coprimos x y)
  