operacao :: Char -> Float -> Float -> Float
operacao op x y | (op == '+') = x + y
                | (op == '-') = x - y
                | (op == '*') = x * y
                | (op == '/') = x / y

main = do
  putStrLn "Operador:"
  operador <- getChar
  _ <- getLine
  putStrLn "Primeiro numero:"
  b <- getLine
  putStrLn "Segundo Numero:"
  c <- getLine
  let x = (read b :: Float)
  let y = (read c :: Float)
  print (operacao operador x y)
  
