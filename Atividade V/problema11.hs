primeiros :: Int -> [t] -> [t]
primeiros 0 _ = []
primeiros _ [] = []
primeiros a (x:xs) = x : (primeiros (a-1) xs)

main = do
  putStrLn (show (primeiros 2 [2, 4, 6, 8]))