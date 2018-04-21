(defun ouExclusivo(x y)
  (and (or x y) (not (and x y)))
)

(defun main()
  (setq x (read))
  (setq y (read))
  (write-line (write-to-string (ouExclusivo x y)))
)

(main)