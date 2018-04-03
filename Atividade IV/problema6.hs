triangulo :: Int -> Int -> Int -> [Char]
triangulo x y z 
  | (x < y + z) && (y < x + z) && (z < y + x) = "Possivel"
  | otherwise = "Impossivel"

main = do
  putStrLn "Primeiro lado:"
  a <- getLine
  putStrLn "Segundo lado:"
  b <- getLine
  putStrLn "Terceiro lado:"
  c <- getLine
  let x = (read a :: Int)
  let y = (read b :: Int)
  let z = (read c :: Int)
  print (triangulo x y z)