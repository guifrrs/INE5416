goldbach n = head [(x,y) | x <- primesR 2 (n-1),
                           let y = n-x, isPrime y]

primesR :: Integral a => a -> a -> [a]
primesR a b = takeWhile (<= b) $ dropWhile (< a) $ sieve [2..]
  where sieve (n:ns) = n:sieve [ m | m <- ns, m `mod` n /= 0 ]

main = do
  putStrLn "Numero:"
  a <- getLine
  let x = (read a)
  print (goldbach x)