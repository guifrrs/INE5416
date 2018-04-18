module Precedencia((+++), (***)) where

-- Aqui, definimos a associatividade a direita para os dois operadores.
-- Temos o *** com um nível de precedencia maior que +++
infixr 4 +++
infixr 6 ***

(+++) :: Int -> Int -> Int
a +++ b = a + 2 * b

(***) :: Int -> Int -> Int
a *** b = a - 4 * b