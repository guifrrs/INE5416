(defun potencia(x y)
  (if (= 1 y)
    x
    (* x (potencia x (- y 1)))
  )
)

(defun main()
  (setq x (read))
  (setq y (read))
  (write-line (write-to-string (potencia x y)))
)

(main)