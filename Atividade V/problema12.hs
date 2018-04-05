apagar :: Int -> [t] -> [t]
apagar _ [] = []
apagar a (x:xs)
  | a == 0 = (x:xs)
  | otherwise = apagar(a-1) xs

main = do
  putStrLn (show (apagar 2 [2, 4, 6, 8]))