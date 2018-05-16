(defun bhaskara(a b c)
  (cons
    (/ (+ b (sqrt (- (* b b) (* 4 a c)))) (* 2 a))
    (/ (- b (sqrt (- (* b b) (* 4 a c)))) (* 2 a))
  )
)

(defun main()
  (setq x (read))
  (setq y (read))
  (setq z (read))
  (write-line (write-to-string (bhaskara x y z)))
)

(main)