(defstruct ponto
  x
  y
)

(setq p1
  (make-ponto
    :x 1
    :y 1
  )
)

(setq p2
  (make-ponto
    :x 3
    :y 1
  )
)

(setq p3
  (make-ponto
    :x 1
    :y 1
  )
)

(defun distancia(a b)
  (sqrt 
    (+ (expt (- (ponto-x b) (ponto-x a)) 2) (expt (- (ponto-y b) (ponto-y a)) 2))
  )
)

(defun colinares(a b c)
  (if (= 0 (det a b c))
    T
    NIL
  )
)

(defun det(a b c)
  (- (+ (* (ponto-x a) (ponto-y b)) (* (ponto-x a) (ponto-x c)) (* (ponto-x b) (ponto-y c))) (+ (* (ponto-y b) (ponto-x c)) (* (ponto-x a) (ponto-y c)) (* (ponto-x b) (ponto-y a))))
)

(defun formaTriangulo (p1 p2 p3)
  (setq A (distancia p1 p2))
  (setq B (distancia p2 p3))
  (setq C (distancia p3 p1))
  (AND 
    (< (abs (- A B)) C)
    (AND (< (abs (- A C)) B)
    (AND (> (+ A B) C)
    (AND (< (abs (- B C)) A)
    (AND (> (+ B C) A)
    (> (+ C A) B))))))
)


(defun main()
  (write-line (write-to-string (distancia p1 p2)))
  (write-line (write-to-string (colinares p1 p2 p3)))
  (write-line (write-to-string (formaTriangulo p1 p2 p3)))
)

(main)