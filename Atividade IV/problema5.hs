media :: Float -> Float -> Float -> Float
media x y z = (x + y + z) / 3

aprovado x = if (x < 6) 
  then "Reprovado"
  else  "Aprovado"

main = do
  putStrLn "Informe a nota: "
  a <- getLine
  putStrLn "Informe a nota: "
  b <- getLine
  putStrLn "Informe a nota: "
  c <- getLine
  let x = (read a :: Float)    
  let y = (read b :: Float)
  let z = (read c :: Float)
  print (aprovado(media x y z))