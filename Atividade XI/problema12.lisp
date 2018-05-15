(defun euclides(x y)
  (if (= 0 x)
    y
    (euclides (mod y x) x)
  )
)

(defun newEuclides (x y z)
  (euclides (euclides x y) z)
)

(defun main()
  (setq x (read))
  (setq y (read))
  (setq z (read))
  (write-line (write-to-string (newEuclides x y z)))
)

(main)