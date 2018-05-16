(defun main()
  (write-line (write-to-string ((lambda (x y z) (/ (+ x y z) 3)) 7 4.5 9.5)))
)

(main)