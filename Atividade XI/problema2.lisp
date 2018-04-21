(defun absoluto(x)
  (if (< x 0)
    (* x  -1)
    x
  )
)

(defun main()
  (setq x (read))
  (write-line (write-to-string (absoluto x)))
)

(main)