divisivel :: Int -> Int -> Bool
divisivel x y = (x `mod` y) == 0

main = do
  putStrLn "Primeiro numero:"
  a <- getLine
  putStrLn "Segundo numero:"
  b <- getLine  
  let x = (read a :: Int)
  let y = (read b :: Int)
  print (divisivel x y)