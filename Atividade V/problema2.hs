soma :: [Int] -> Int
soma [] = 0
soma (x:xs) = x + soma xs

comprimento :: [Int] -> Int
comprimento [] = 0
comprimento (_:xs) = 1 + comprimento xs

media :: [Int] -> Float
media [] = 0
media x = fromIntegral (soma x) / fromIntegral (comprimento x)

main = do
  putStrLn (show (media [10, 10, 8, 4]))