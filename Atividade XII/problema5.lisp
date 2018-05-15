(defun busca(lista numero)
  (if (null lista)
    NIL
    (if (= numero (car lista))
      T
      (busca (cdr lista) numero)
    )
  )
)

(defun main()
  (write-line (write-to-string (busca '(1 2 3 4 5) 3)))
  (write-line (write-to-string (busca '(1 2 3 4 5) 6)))
)

(main)