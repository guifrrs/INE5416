bhaskara :: Float -> Float -> Float -> (Float, Float)
bhaskara = (\a b c -> if delta a b c < 0 then (0, 0)
            else ((-b + (delta a b c) **0.5) / (2 * a), (-b - (delta a b c) **0.5) / (2 * a)))

delta :: Float -> Float -> Float -> Float
delta = (\a b c -> (b * b) - 4 * a * c)

main = do
  putStrLn "A:"
  x <- getLine
  putStrLn "B:"
  y <- getLine
  putStrLn "C:"
  z <- getLine
  let a = (read x :: Float)
  let b = (read y :: Float)
  let c = (read z :: Float)
  print (bhaskara a b c)