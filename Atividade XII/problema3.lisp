(defun menor(lista)
  (if (null lista) 
    0
    (if (= 1 (comprimento lista))
      (car lista)
      (if (< (car lista) (menor (cdr lista)))
        (car lista)
        (menor (cdr lista))
      )
    )
  )
)

(defun comprimento(lista)
  (if (null lista)
    0
    (+ 1 (comprimento (cdr lista)))
  )
)


(defun main()
  (write-line (write-to-string (menor '(1 2 3 4 5))))
  (write-line (write-to-string (menor '(6 4 3 2 5))))
  (write-line (write-to-string (menor '(10 20 30 40 5))))
)

(main)