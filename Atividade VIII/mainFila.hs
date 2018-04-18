import Fila (Fila (Queue), enqueue, dequeue, emptyQueue, first)

main = do
  putStrLn (show (enqueue (enqueue emptyQueue 1) 2))
  putStrLn (show (dequeue (Queue [1, 2, 3, 4, 5])))
  putStrLn (show (first (Queue [1, 2, 3, 4, 5])))