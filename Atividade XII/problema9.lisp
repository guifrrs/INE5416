(defun inverter(lista)
  (if (null lista)
    ()
    (nconc 
      (inverter (cdr lista)) (list (car lista))
    )
  )
)

(defun main()
  (write-line (write-to-string (inverter '(1 2 3 4 5))))
)

(main)