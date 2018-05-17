(defun mdc(x y)
  (if (> x y)
    (mdc (- x y) y)
    (if (> y x)
      (mdc (- y x) x)
      x
    )
  )
)

(defun coprimos(x y)
  (if (= (mdc x y) 1)
    T
    NIL
  )
)

(defun totienteEuler(n m)
  (if (= m 0)
    0
    (if (coprimos n m)
      (+ 1 (totienteEuler n (- m 1)))
      (totienteEuler n (- m 1))
    )
  )
)

(defun main()
  (setq x (read))
  (write-line (write-to-string (totienteEuler x x)))
)

(main)