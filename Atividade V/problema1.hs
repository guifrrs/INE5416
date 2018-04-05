soma :: [Int] -> Int
soma [] = 0
soma (x:xs) = x + soma xs

main = do 
  putStrLn (show (soma [5, 10, 2, 2, 1]))