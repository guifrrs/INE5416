areaTriangulo :: Float -> Float -> Float
areaTriangulo base altura = (base * altura) / 2

main = do
  putStrLn "Base:"
  a <- getLine
  putStrLn "Altura:"
  b <- getLine
  let base = (read a :: Float)
  let altura = (read b :: Float)
  print (areaTriangulo base altura)