apagarEnquanto :: (t -> Bool) -> [t] -> [t]
apagarEnquanto _ [] = []
apagarEnquanto func (x:xs)
  | func x == False = (x:xs)
  | otherwise = apagarEnquanto func xs

par a = a `mod` 2 == 0

main = do
  putStrLn (show (apagarEnquanto par [2, 4, 1, 2, 3, 4, 5]))