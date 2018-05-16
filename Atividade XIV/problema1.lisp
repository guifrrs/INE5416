(defun main()
  (write-line (write-to-string ((lambda (x y) (AND (OR x y) (NOT (AND x y)))) T NIL))) ; T
  (write-line (write-to-string ((lambda (x y) (AND (OR x y) (NOT (AND x y)))) T T))) ; F
  (write-line (write-to-string ((lambda (x y) (AND (OR x y) (NOT (AND x y)))) NIL NIL))) ; F
  (write-line (write-to-string ((lambda (x y) (AND (OR x y) (NOT (AND x y)))) NIL T))) ; T
)

(main)