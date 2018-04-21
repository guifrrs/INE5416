(defun aprovado(a b c)
  (if (>= (/ (+ a (+ b c)) 3) 6)
    T
    NIL
  )
)

(defun main()
  (setq x (read))
  (setq y (read))
  (setq z (read))
  (write-line (write-to-string (aprovado x y z)))
)

(main)