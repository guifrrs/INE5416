ocorrencias :: [Int] -> Int -> Int
ocorrencias [] i = 0
ocorrencias (x:xs) i
  | x == i = 1 + ocorrencias xs i
  | otherwise = ocorrencias xs i

main = do
  putStrLn (show (ocorrencias [1, 2, 2, 3, 4, 5, 6, 2, 7] 2))