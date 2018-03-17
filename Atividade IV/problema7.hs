fib :: Int -> Int
fib n   | (n < 2) = n
        | otherwise = fib(n - 1) + fib(n - 2)

main = do 
  putStrLn "Digite o numero: "
  a <- getLine
  let x = (read a :: Int)
  print(fib x)