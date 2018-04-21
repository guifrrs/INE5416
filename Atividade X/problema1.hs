data Expr = Val Int | Div Expr Expr | Mul Expr Expr | Add Expr Expr | Sub Expr Expr

mydiv :: Int -> Int -> Maybe Int
mydiv n m
  | (m == 0) = Nothing
  | otherwise = Just (n `div` m)

mymult :: Int -> Int -> Maybe Int
mymult n m
  | (n == 0 || m == 0) = return 0
  | otherwise = Just (n * m)

myadd :: Int -> Int -> Maybe Int
myadd n m
  | (n == 0) = return n
  | (m == 0) = return m
  | otherwise = Just (n + m)

mysub :: Int -> Int -> Maybe Int
mysub n m
  | (n == 0) = return m
  | (m == 0) = return n
  | otherwise = Just (n - m)

eval :: Expr -> Maybe Int
eval (Val n) = Just n
eval (Div x y) = case (eval x) of
                      Nothing -> Nothing
                      Just n -> case (eval y) of
                        Nothing -> Nothing
                        Just m -> (mydiv n m)
eval (Mul x y) = case (eval x) of
                    Nothing -> Nothing
                    Just n -> case (eval y) of
                      Nothing -> Nothing
                      Just m -> (mymult n m)
eval (Add x y) = case (eval x) of
                Nothing -> Nothing
                Just n -> case (eval y) of
                  Nothing -> Nothing
                  Just m -> (myadd n m)
eval (Sub x y) = case (eval x) of
                Nothing -> Nothing
                Just n -> case (eval y) of
                  Nothing -> Nothing
                  Just m -> (mysub n m)

evalmonad :: Expr -> Maybe Int
evalmonad (Val n) = return n
evalmonad (Div x y) = evalmonad x >>=
                        (\n -> evalmonad y >>=
                          \m -> (mydiv n m))
evalmonad (Mul x y) = evalmonad x >>=
                        (\n -> evalmonad y >>=
                        \m -> (mymult n m))
evalmonad (Add x y) = evalmonad x >>=
                        (\n -> evalmonad y >>=
                          \m -> (myadd n m))
evalmonad (Sub x y) = evalmonad x >>=
                        (\n -> evalmonad y >>=
                          \m -> (mysub n m))

evalfinal :: Expr -> Maybe Int
evalfinal (Val n) = return n
evalfinal (Div x y) = do
  n <- evalfinal x
  m <- evalfinal y
  mydiv n m
evalfinal (Mul x y) = do
  n <- evalfinal x
  m <- evalfinal y
  mymult n m
evalfinal (Add x y) = do
  n <- evalfinal x
  m <- evalfinal y
  myadd n m
evalfinal (Sub x y) = do
  n <- evalfinal x
  m <- evalfinal y
  mysub n m

main = do
  -- Div
  putStrLn ("--- Divisao ---")
  print (mydiv 5 0)
  print (mydiv 5 2)
  print (eval (Div (Val 5) (Val 0)))
  print (eval (Div (Val 5) (Val 2)))
  print (evalmonad (Div (Val 5) (Val 0)))
  print (evalmonad (Div (Val 5) (Val 2)))
  print (evalfinal (Div (Val 5) (Val 0)))
  print (evalfinal (Div (Val 5) (Val 2)))
  -- Mult
  putStrLn ("--- Multiplicacao ---")
  print (mymult 5 0)
  print (mymult 5 2)
  print (eval (Mul (Val 5) (Val 0)))
  print (eval (Mul (Val 5) (Val 2)))
  print (evalmonad (Mul (Val 5) (Val 0)))
  print (evalmonad (Mul (Val 5) (Val 2)))
  print (evalfinal (Mul (Val 5) (Val 0)))
  print (evalfinal (Mul (Val 5) (Val 2)))
  -- Add
  putStrLn ("--- Adicao ---")
  print (myadd 5 0)
  print (myadd 5 2)
  print (eval (Sub (Val 5) (Val 0)))
  print (eval (Sub (Val 5) (Val 2)))
  print (evalmonad (Add (Val 5) (Val 0)))
  print (evalmonad (Add (Val 5) (Val 2)))
  print (evalfinal (Add (Val 5) (Val 0)))
  print (evalfinal (Add (Val 5) (Val 2)))
  -- Sub
  putStrLn ("--- Subtracao ---")
  print (mysub 5 0)
  print (mysub 5 2)
  print (eval (Sub (Val 5) (Val 0)))
  print (eval (Sub (Val 5) (Val 2)))
  print (evalmonad (Sub (Val 5) (Val 0)))
  print (evalmonad (Sub (Val 5) (Val 2)))
  print (evalfinal (Sub (Val 5) (Val 0)))
  print (evalfinal (Sub (Val 5) (Val 2)))
  -- Testes
  putStrLn (" --- Expressoes --- ")
  print (evalfinal (Mul (Div (Add (Val 28) (Val 2)) (Sub (Val 6) (Val 1))) (Val 3)))  -- 18
  print (evalfinal (Div (Mul (Add (Val 5) (Val 5))(Sub (Val 12) (Val 2))) (Sub (Val 6) (Val 4)))) -- 50
  print (evalfinal (Sub (Mul (Add (Val 2) (Val 2)) (Val 30)) (Add (Val 20) (Val 13)))) -- 87
print (evalfinal (Mul (Div (Add (Val 28) (Val 2)) (Sub (Val 6) (Val 6))) (Val 3))) -- Nothing