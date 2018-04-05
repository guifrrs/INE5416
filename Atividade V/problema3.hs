menor :: [Int] -> Int
menor [] = 0
menor [x] = x
menor (x:xs)
  | x < less = x
  | otherwise = less
  where less = menor xs

main = do
  putStrLn (show (menor [3, 4, 5, 9, 100, 22, 1]))