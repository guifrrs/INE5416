module Ponto (Ponto (Ponto2D), distancia, colineares, formaTriangulo) where

  data Ponto = Ponto2D (Float, Float) deriving Show
  
  distancia :: Ponto -> Ponto -> Float
  distancia (Ponto2D (x1, y1))(Ponto2D (x2,y2)) = sqrt((x2-x1)^2 + (y2-y1)^2)
  
  colineares :: Ponto -> Ponto -> Ponto -> Bool
  colineares (Ponto2D (x1, y1))(Ponto2D (x2,y2))(Ponto2D (x3, y3))
    | (x1 * y2 + y1 * x3 + x2 * y3) - (y2 * x3 + x1 * y3 + y1 * x2) == 0 = True
    | otherwise = False
  
  formaTriangulo :: Ponto -> Ponto -> Ponto -> Bool
  formaTriangulo (Ponto2D (x1, y1))(Ponto2D (x2,y2))(Ponto2D (x3, y3)) = True