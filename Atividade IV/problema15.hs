totiente 1 = 1
totiente x = length $ filter (coprimo x) [1.. x-1]
  where coprimo x y = gcd x y == 1

main = do
  putStrLn "Informe o numero"
  a <- getLine
  let x = (read a)
  print (totiente x)