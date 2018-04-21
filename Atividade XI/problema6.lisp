(defun triangulo(x y z)
  (if (and (< x (+ y z)) (< y (+ x z)) (< z (+ x y)))
  "Possivel"
  "Impossivel"
  )
)

(defun main()
  (setq x (read))
  (setq y (read))
  (setq z (read))
  (write-line (write-to-string (triangulo x y z)))
)

(main)