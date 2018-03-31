bhaskara :: Float -> Float -> Float -> (Float, Float)
bhaskara a b c = (x1, x2)
  where
    x1 = (-b + (delta a b c)) / 2 * a
    x2 = (-b - (delta a b c)) / 2 * a

delta :: Float -> Float -> Float -> Float
delta a b c = sqrt((b * b) - 4 * a * c)

main = do
  putStrLn "Valor de A:"
  a <- getLine
  putStrLn "Valor de B:"
  b <- getLine
  putStrLn "Valor de C:"
  c <- getLine
  let x = (read a :: Float)
  let y = (read b :: Float)
  let z = (read c :: Float)
  print (bhaskara x y z)