euclides :: Int -> Int -> Int
euclides x y 
  | (x == 0) = y
  | otherwise = (euclides (y `mod` x) x)

totiente 1 = 1
totiente x = length $ filter (coprimo x) [1..x-1]
  where
    coprimo x y = (euclides x y) == 1

main = do
  putStrLn "Numero:"
  a <- getLine
  let x = (read a)
  print (totiente x)