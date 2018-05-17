(defun primeiros(n lista)
  (if (OR (= 0 n ) (null lista))
    ()
    (cons (car lista) (primeiros (- n 1) (cdr lista)))
  )
)

(defun main()
  (write-line (write-to-string (primeiros 3 '(1 2 3 4 5))))
)

(main)