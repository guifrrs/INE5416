euclides :: Int -> Int -> Int
euclides x y 
  | (x == 0) = y
  | otherwise = (euclides (y `mod` x) x)

mmc :: Int -> Int -> Int
mmc x 1 = x
mmc 1 x = x
mmc x y = (x * y) `div` (euclides x y)

main = do
  putStrLn "Primeiro numero:"
  a <- getLine
  putStrLn "Segundo numero:"
  b <- getLine
  let x = (read a :: Int)
  let y = (read b :: Int)
  print (mmc x y)
  