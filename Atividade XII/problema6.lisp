(defun ocorrencias(lista numero)
  (if (null lista)
    0
    (if (= numero (car lista))
      (+ 1 (ocorrencias (cdr lista) numero))
      (ocorrencias (cdr lista) numero)
    )
  )
)

(defun main()
  (write-line (write-to-string (ocorrencias '(1 2 2 3 2 4 5) 2)))
  (write-line (write-to-string (ocorrencias '(1 2 2 3 2 4 5) 6)))
)

(main)