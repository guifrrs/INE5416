(defun divisivel(a b)
  (if (= (mod a b) 0)
    T
    NIL
  )
)

(defun main()
  (setq x (read))
  (setq y (read))
  (write-line (write-to-string (divisivel x y)))
)

(main)