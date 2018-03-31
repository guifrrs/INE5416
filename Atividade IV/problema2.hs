absoluto :: Int -> Int
absoluto x  | (x < 0) = -x
            | otherwise = x

main = do
  putStrLn "Numero:"
  a <- getLine
  let x = (read a :: Int)
  print (absoluto x)