areaTriangulo :: Float -> Float -> Float
areaTriangulo x y = (x * y) / 2

main = do
  putStrLn "Informe a base: "
  a <- getLine
  putStrLn "Informe a altura: "
  b <- getLine
  let x = (read a :: Float)
  let y = (read b :: Float)
  print (areaTriangulo x y)