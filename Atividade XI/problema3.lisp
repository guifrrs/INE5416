(defun areaTriangulo(base altura)
  (/ (* base altura) 2)
)

(defun main()
  (setq x (read))
  (setq y (read))
  (write-line (write-to-string (areaTriangulo x y)))
)

(main)