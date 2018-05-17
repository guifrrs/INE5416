(defun apagar(n lista)
  (if (null lista)
    ()
    (if (= 0 n)
      lista
      (apagar (- n 1) (cdr lista))
    )
  )
)

(defun main()
  (write-line (write-to-string (apagar 2 '(1 2 3 4 5))))
)

(main)