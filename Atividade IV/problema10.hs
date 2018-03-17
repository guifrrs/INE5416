maior :: Int -> Int -> Int -> Int
maior x y z = if (x < y)
  then
    if (x < z)
      then x
    else
      z
  else
    if (y < z)
      then
        y
      else
        z

main = do
  putStrLn "Informe o numero: "
  a <- getLine
  putStrLn "Informe o numero: "
  b <- getLine
  putStrLn "Informe o numero: "
  c <- getLine
  let x = (read a :: Int)
  let y = (read b :: Int)
  let z = (read c :: Int)
  print (maior x y z)