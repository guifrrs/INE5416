busca :: [Int] -> Int -> Bool
busca [] i = False
busca (x:xs) i
  | x == i = True
  | otherwise = busca xs i

main = do
  putStrLn (show (busca [2, 4, 6, 8, 10] 2))