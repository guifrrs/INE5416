fib :: Int -> Int
fib = (\x -> if (x < 2) then x else fib(x-1) + fib(x-2))

main = do
  putStrLn "Digite o numero:"
  a <- getLine
  let x = (read a :: Int)
  print (fib x)