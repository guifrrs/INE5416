menor :: [Int] -> Int
menor [] = 0
menor [x] = x
menor (x:xs)
  | x < less = x
  | otherwise = less
  where less = menor xs

maior :: [Int] -> Int
maior [] = 0
maior [x] = x
maior (x:xs)
  | x > big = x
  | otherwise = big
  where big = maior xs

diferencaMaiorMenor :: [Int] -> Int
diferencaMaiorMenor x = maior x - menor x

main = do
  putStrLn (show (diferencaMaiorMenor [20, 15, 17, 18, 19, 25, 10]))