-- Verifica se os únicos fatores do numero sao 1 e ele mesmo
ePrimo n  | (fatores n == [1,n]) = "Primo" 
          | otherwise = "Nao e primo"
  where
    -- Gera uma lista com todos os fatores de n com resto 0
    fatores n = [x | x <- [1..n], mod n x == 0]

main = do
  putStrLn "Numero:"
  a <- getLine
  let x = (read a :: Int)
  print (ePrimo x)