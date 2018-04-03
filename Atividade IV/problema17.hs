ePrimo n
  | (fatores n == [1, n]) = "Primo"
  | otherwise = "Nao e primo"

fatores n = [x | x <- [1..n], mod n x == 0]

main = do
  putStrLn "Numero:"
  a <- getLine
  let x = (read a :: Int)
  print (ePrimo x)