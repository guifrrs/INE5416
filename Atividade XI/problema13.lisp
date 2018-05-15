(defun euclides(x y)
  (if (= 0 x)
    y
    (euclides (mod y x) x)
  )
)

(defun mmc(x y)
  (if (OR (= 1 y) (= 1 x))
    x
    (/ (* x y) (euclides x y))
  )
)

(defun main()
  (setq x (read))
  (setq y (read))
  (write-line (write-to-string (mmc x y)))
)

(main)