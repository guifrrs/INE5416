xor :: Bool -> Bool -> Bool
xor x y   | (x == True && y == True) = False
          | (x == False && y == False) = False
          | otherwise = True

main = do
  putStrLn "Primeiro boolean: "
  a <- getLine
  putStrLn "Segundo boolean: "
  b <- getLine
  let x = (read a :: Bool)
  let y = (read b :: Bool)
  print (xor x y)