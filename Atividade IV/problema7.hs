fib :: Int -> Int
fib x 
  | (x < 2) = x
  | otherwise = fib(x-1) + fib(x-2)

main = do
  putStrLn "Numero:"
  a <- getLine
  let x = (read a :: Int)
  print (fib x)