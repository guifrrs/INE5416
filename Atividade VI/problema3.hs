data Ponto = XY Float Float | XYZ Float Float Float

distancia :: Ponto -> Ponto -> Float
distancia (XY x1 y1)(XY x2 y2) = sqrt((x2 - x1)^2 + (y2 - y1)^2)
distancia (XYZ x1 y1 z1)(XYZ x2 y2 z2) = sqrt((x2-x1)^2 + (y2-y1)^2 + (z2-z2)^2)

-- 2 pontos 2D
p1 :: Ponto
p1 = (XY 1 1)

p2 :: Ponto
p2 = (XY 2 2)

-- 2 pontos 3D
p3 :: Ponto
p3 = (XYZ 1 1 1)

p4 :: Ponto
p4 = (XYZ 2 2 2)

main = do
  putStrLn (show (distancia p1 p2))  
  putStrLn (show (distancia p3 p4))