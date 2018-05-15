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

(defun maior(lista)
  (if (null lista)
    0
    (if (= 1 (comprimento lista))
      (car lista)
      (if (> (car lista) (maior (cdr lista)))
        (car lista)
        (maior (cdr lista))
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

(defun diferencaMaiorMenor(lista)
  (- (maior lista) (menor lista))
)

(defun main()
  (write-line (write-to-string (diferencaMaiorMenor '(1 2 3 4 5))))
  (write-line (write-to-string (diferencaMaiorMenor '(10 20 30 40))))
)

(main)
