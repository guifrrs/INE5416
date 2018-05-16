(defun geraLista (max &key (min 1) (step 1))
   (loop for n from min below max by step collect n)
)

(defun comprimento(lista)
  (if (null lista)
    0
    (+ 1 (comprimento (cdr lista)))
  )
)

(defun primo(x)
  (if (= (tamanhoDivisores (geraLista x) x) 1)
    T
    NIL
  )
)

(defun tamanhoDivisores(lista x)
  (if (null lista)
    0
    (if (= (mod x (car lista)) 0)
      (+ 1 (tamanhoDivisores (cdr lista) x))
      (+ (tamanhoDivisores (cdr lista) x))
    )
  )
)

(defun main()
  (setq x (read))
  (write-line (write-to-string (primo x)))
)

(main)