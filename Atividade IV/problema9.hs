distancia :: (Float, Float, Float) -> (Float, Float, Float) -> Float
distancia (x1, y1, z1)(x2, y2, z2) = sqrt (x + y + z)
  where
    x = (x2 - x1) ^ 2
    y = (y2 - y1) ^ 2
    z = (z2 - z1) ^ 2

main = do
  putStrLn "Use o formato (x, y, z)"
  putStrLn "Informe P1:"
  p1 <- getLine
  putStrLn "Informe P2:"
  p2 <- getLine
  let a = (read p1 :: (Float, Float, Float))
  let b = (read p2 :: (Float, Float, Float))
  print (distancia a b)