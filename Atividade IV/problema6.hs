absoluto :: Int -> Int
absoluto x  | (x < 0) = -x
            | otherwise = x

triangulo :: Int -> Int -> Int -> Bool
triangulo a b c = l1 && l2 && l3
  where
    l1 = absoluto(b - c) < a && a < b + c && absoluto(b - c) < b + c
    l2 = absoluto(a - c) < b && b < a + c && absoluto(a - c) < a + c
    l3 = absoluto(a - b) < c && c < a + b && absoluto(a - b) < a + b
 
main = do
  putStrLn "Informe um lado:"
  a <- getLine
  putStrLn "Informe um lado:"
  b <- getLine
  putStrLn "Informe um lado:"
  c <- getLine
  let x = (read a :: Int)
  let y = (read b :: Int)
  let z = (read c :: Int)
  print(triangulo x y z)
  