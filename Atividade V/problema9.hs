mapear :: (t -> y) -> [t] -> [y]
mapear _ [] = []
mapear func (x:xs) = [func x] ++ mapear func xs

main = do
  putStrLn (show (mapear (*2) [1, 2, 3, 4, 5, 6, 7]))