euclides :: Int -> Int -> Int
euclides x y  | (x == 0) = y
              | otherwise = (euclides (y `mod` x) x)

newEuclides :: Int -> Int -> Int -> Int
newEuclides x y z = euclides(euclides x y) z

main = do
  putStrLn "Primeiro numero: "
  a <- getLine
  putStrLn "Segundo numero: "
  b  <- getLine
  putStrLn "Terceiro numero:"
  c <- getLine
  let x = (read a :: Int)
  let y = (read b :: Int)
  let z = (read c :: Int)
  print(newEuclides x y z)