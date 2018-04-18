parEimpar :: [Int] -> [Bool]
parEimpar = map (\x -> x `mod` 2 == 0)

main = do
  print (parEimpar [1, 2, 3, 4, 5, 6])