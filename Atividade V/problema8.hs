inverte :: [t] -> [t]
inverte [x] = [x]
inverte (x:xs) = inverte xs ++ [x]

main = do
  putStrLn (show (inverte [1, 2, 3, 4, 5]))