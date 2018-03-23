data Ponto = XY Float Float | XYZ Float Float Float
distancia :: Ponto -> Ponto -> Float
-- 2D
distancia (XY x1 y1)(XY x2 y2) = sqrt((x2-x1)^2 + (y2-y1)^2)
-- 3D
distancia (XYZ x1 y1 z1)(XYZ x2 y2 z2) = sqrt((x2-x1)^2 + (y2-y1)^2 + (z2-z1)^2)

p1 :: Ponto
p1 = (XY 1 1)

p2 :: Ponto
p2 = (XY 3 1)

p3 :: Ponto 
p3 = (XYZ 1 1 1)

p4 :: Ponto
p4 = (XYZ 3 1 0)

main = do
  putStrLn (show (distancia p1 p2))
  putStrLn (show (distancia p3 p4))