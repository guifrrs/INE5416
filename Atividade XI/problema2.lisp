(defun absoluto(x)
  (if (< x 0)
    (* -1 x)
    x
  )
)

(defun main()
  (setq x (read))
  (write-line (write-to-string (absoluto x)))
)

(main)