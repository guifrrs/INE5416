bhaskara :: Float -> Float -> Float -> (Float, Float)
bhaskara a b c = (x1, x2)
  where
    x1 = e + sqrt delta / (2 * a)
    x2 = e - sqrt delta / ( 2 * a)
    delta = b * b - 4 * a * c
    e = - b / (2  * a)

main = do
  putStrLn "Informe a: "
  a <- getLine
  putStrLn "Informe b: "
  b <- getLine
  putStrLn "Informe c: "
  c <- getLine
  let x = (read a :: Float)
  let y = (read b :: Float)
  let z = (read c :: Float)
  print (bhaskara x y z)