xor :: Bool -> Bool -> Bool
xor = (\x y -> (x || y) && not (x && y))

main = do
  putStrLn "A:"
  a <- getLine
  putStrLn "B:"
  b <- getLine
  let x = (read a :: Bool)
  let y = (read b :: Bool)
  print (xor x y)