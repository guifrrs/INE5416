(defun euclides(x y)
  (if (= 0 x)
    y
    (euclides (mod y x) x)
  )
)

(defun main()
  (setq x (read))
  (setq y (read))
  (write-line (write-to-string (euclides x y)))
)

(main)