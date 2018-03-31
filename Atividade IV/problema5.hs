media :: Float -> Float -> Float -> [Char]
media a b c = aprovado ((a + b + c) / 3)
  where
    aprovado x  | (x < 6) =  "Reprovado"
                | otherwise = "Aprovado"

main = do
  putStrLn "Nota 1:"
  a <- getLine
  putStrLn "Nota 2:"
  b <- getLine
  putStrLn "Nota 3:"
  c <- getLine
  let x = (read a :: Float)
  let y = (read b :: Float)
  let z = (read c :: Float)
  print (media x y z)