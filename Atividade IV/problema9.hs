distancia :: (Float, Float, Float) -> (Float, Float, Float) -> Float
distancia (x1, y1, z1)(x2, y2, z2) = sqrt(x + y + z)
  where
    x = (x2 - x1) ^ 2
    y = (y2 - y1) ^ 2 
    z = (z2 - z1) ^ 2

main = do
  putStrLn "Use o formato (x, y, z)"
  putStrLn "Ponto 1:"
  a <- getLine
  putStrLn "Ponto 2:"
  b <- getLine
  let p1 = (read a :: (Float, Float, Float))
  let p2 = (read b :: (Float, Float, Float))
  print (distancia p1 p2)