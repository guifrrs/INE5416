operacao :: Char -> Float -> Float -> Float
operacao op x y = operador
  where 
    operador
      | (op == '+') = x + y
      | (op == '-') = x - y
      | (op == '*') = x * y
      | (op == '/') = x / y

main = do
  putStrLn "Operador: (Deve estar entre ' ')"
  a <- getLine
  putStrLn "X:"
  b <- getLine
  putStrLn "Y:"
  c <- getLine
  let op = (read a :: Char)
  let x = (read b :: Float)
  let y = (read c :: Float)
  print (operacao op x y)