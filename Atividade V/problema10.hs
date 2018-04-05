filtrar :: (t -> Bool) -> [t] -> [t]
filtrar _ [] = []
filtrar func (x:xs) = [x | x <- xs, func x]

main = do
  putStrLn (show (filtrar (>5) [2, 4, 6, 8, 10]))