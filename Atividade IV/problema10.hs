maior x y z = maiorX + maiorY + maiorZ + iguais
  where
    maiorX  | (x > y) && (x > z) = x
            | otherwise = 0
    maiorY  | (y > x) && (y > z) = y
            | otherwise = 0
    maiorZ  | (z > x) && (z > y) = z
            | otherwise = 0
    iguais  | (x == y) && (x == z) = x
            | otherwise = 0

main = do
  putStrLn "Informe o numero: "
  a <- getLine
  putStrLn "Informe o numero: "
  b <- getLine
  putStrLn "Informe o numero: "
  c <- getLine
  let x = (read a :: Int)
  let y = (read b :: Int)
  let z = (read c :: Int)
  print (maior x y z)