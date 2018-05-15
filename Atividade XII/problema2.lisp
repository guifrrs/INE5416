(defun media(lista)
  (if (null lista)
    0
    (/ (soma lista) (comprimento lista))
  )
)

(defun soma(lista)
  (if (null lista)
    0
    (+ (car lista) (soma (cdr lista)))
  )
)

(defun comprimento(lista)
  (if (null lista)
    0
    (+ 1 (comprimento (cdr lista)))
  )
)

(defun main()
  (write-line (write-to-string (media '(10 5 5 3))))
)

(main)