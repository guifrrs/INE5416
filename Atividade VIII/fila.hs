module Fila (Fila (Queue), enqueue, dequeue, emptyQueue, first) where

data Fila t = Queue [t]
    deriving (Eq, Show)

-- Para realizar o enqueue, adicionamos um elemento ao inicio da fila.
enqueue :: Fila t -> t -> Fila t  
enqueue (Queue x) s =  Queue (x ++ [s])

-- Para realizar o dequeue, retiramos um elemento do inicio da fila.
dequeue :: Fila t -> Fila t
dequeue (Queue []) = error "Empty"
dequeue (Queue (x:xs)) = Queue xs

-- Retornamos o primeiro elemento da fila, i.e, a cabeça.
first :: Fila t -> t
first (Queue []) = error "Empty"
first (Queue (x:xs)) = x

-- Cria uma fila vazia.
emptyQueue :: Fila t
emptyQueue = Queue []
