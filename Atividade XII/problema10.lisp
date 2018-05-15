(defun mapear(func lista)
  (if (null lista)
    ()
    (cons (funcall func (car lista)) (mapear func (cdr lista)))
  )
)

(defun dobro(numero)
  (* numero 2)
)

(defun main()
  (write-line (write-to-string (mapear (function dobro) '(1 2 3 4 5))))
)

(main)