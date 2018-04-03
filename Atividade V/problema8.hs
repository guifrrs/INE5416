inverte :: [t] -> [t]
inverte [x] = [x]
inverte (x:xs) = inverte xs ++ [x]

main = do
  putStrLn "Lista de numeros: (Formato Num Num Num)"
  a <- getLine
  print (inverte a)