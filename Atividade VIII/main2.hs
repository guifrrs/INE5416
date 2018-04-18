module Main (main) where

  import Ponto
  
  main = do
    print (distancia (Ponto2D (3,1))(Ponto2D (1,1))) -- 2
    print (colineares (Ponto2D (2, 5))(Ponto2D (3,7))(Ponto2D (5,11))) -- True
    print (colineares (Ponto2D (2, 2))(Ponto2D (-3,-1))(Ponto2D (-3,1))) -- False