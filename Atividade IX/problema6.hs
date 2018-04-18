maior :: Int -> Int -> Int -> Int
maior = (\x y z -> if x > y && x > z then x else if y > z then y else z)

main = do
  putStrLn "N1:"
  a <- getLine
  putStrLn "N2:"
  b <- getLine
  putStrLn "N3:"
  c <- getLine
  let x = (read a :: Int)
  let y = (read b :: Int)
  let z = (read c :: Int)
  print (maior x y z)