(defun euclides(x y)
  (if (= 0 x)
    y
    (euclides (mod y x) x)
  )
)

(defun coprimos(x y)
  (if (= 1 (euclides x y))
    "Coprimos"
    "Nao sao coprimos"
  )
)

(defun main()
  (setq x (read))
  (setq y (read))
  (write-line (write-to-string (coprimos x y)))
)

(main)