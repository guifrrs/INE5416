import Precedencia

main = do
  print (1 +++ 2) -- 5
  print (1 *** 4) -- -15
  -- Agora, ao utilizarmos os dois em conjuntos,
  -- podemos ver a diferença no nivel de precedencia.
  print (2 +++ 4 *** 3) -- -14

  -- Como (***) possui maior precedencia, 4 *** 3 sera avaliado primeiro.