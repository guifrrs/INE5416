(defun fib(x)
  (if (< x 2)
    x
    (+ (fib (- x 1)) (fib (- x 2)))
  )
)

(defun main()
  (setq x (read))
  (write-line (write-to-string (fib x)))
)

(main)