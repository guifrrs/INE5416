distancia :: (Float, Float, Float) -> (Float, Float, Float) -> Float
distancia = (\(x1, y1, z1) (x2, y2, z2) -> ((x2-x1)^2 + (y2-y1)^2 + (z2 - z1)^2) ** 0.5)

main = do
  putStrLn "P1:"
  a <- getLine
  putStrLn "P2:"
  b <- getLine
  let p1 = (read a :: (Float, Float, Float))
  let p2 = (read b :: (Float, Float, Float))
  print (distancia p1 p2)