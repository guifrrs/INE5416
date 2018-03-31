maior :: Int -> Int -> Int -> Int
maior a b c | (a > big b c) = a
            | otherwise = big b c

big b c | (b > c) = b
      | otherwise = c

main = do
  putStrLn "Primeiro numero:"
  a <- getLine
  putStrLn "Segundo numero:"
  b <- getLine
  putStrLn "Terceiro numero:"
  c <- getLine
  let x = (read a :: Int)
  let y = (read b :: Int)
  let z = (read c :: Int)
  print (maior x y z)