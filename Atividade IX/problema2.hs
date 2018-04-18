media :: Float -> Float -> Float -> Bool
media = (\x y z -> ((x + y + z) / 3) >= 6)

main = do
  putStrLn "Digite a nota:"
  a <- getLine
  putStrLn "Digite a nota:"
  b <- getLine
  putStrLn "Digite a nota:"
  c <- getLine
  let x = (read a :: Float)
  let y = (read b :: Float)
  let z = (read c :: Float)
  print (media x y z)