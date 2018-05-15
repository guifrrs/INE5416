(defun m(a b)
  (if (> a b)
    a
    b
  )
)

(defun maior(a b c)
  (if (> a (m b c))
    a
    (m b c)
  )
)

(defun main()
  (setq x (read))
  (setq y (read))
  (setq z (read))
  (write-line (write-to-string (maior x y z)))
)

(main)