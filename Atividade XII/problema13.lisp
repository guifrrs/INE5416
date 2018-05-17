(defun apagarEnquanto(func lista)
 (if (funcall func (car lista))
    (apagarEnquanto (function par) (cdr lista))
    (cons (car lista) (cdr lista))
 ) 
)

(defun par(n)
  (if (= (mod n 2) 0)
    T
    NIL
  )
)

(defun main()
  (write-line (write-to-string (apagarEnquanto (function par) '(2 4 6 8 9 10 12))))
)

(main)