(defun enesimo(lista n)
  (if (null lista)
    0
    (if (= n 0)
      (car lista)
      (enesimo (cdr lista) (- n 1))
    )
  )
)

(defun main()
  (write-line (write-to-string (enesimo '(1 2 3 4 5) 1)))
)

(main)