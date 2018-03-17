euclides :: Int -> Int -> Int
euclides x y  | (x == 0) = y
              | otherwise = (euclides (y `mod` x) x)

coprimos x y = if (euclides x y) == 1
  then
    "Sao coprimos"
  else
    "Nao sao coprimos"

main = do
  putStrLn "Informe o numero 1:"
  a <- getLine
  putStrLn "Informe o numero 2:"
  b <- getLine
  let x = (read a :: Int)
  let y = (read b :: Int)
  print(coprimos x y)