;;;; Common Divisors
(load "10-isprime_devid.lisp"); include isprime function

(defun factor (x y)
    (cond
        ((and (eq (mod x y) 0) (funcall #'isprime y )) T)
        (T nil)
    )
)
(print (factor 10 5)); T
(print (factor 10 3)); NIL

(defun cdivisor (x y)
    (cond
        ((eq y 1) NIL)
        ((funcall #'factor x y) (cons y (cdivisor x (- y 1))))
        (T (cdivisor x (- y 1)))
    )
)
(print (cdivisor 9 16)); (3)
(print (cdivisor 20 40)); (5 2)

(defun g(x)
    (cond
        ((eq x 10) NIL)
        ((<  x 10) (cons x (g (+ x 1))))
        ((>  x 10) (cons x (g (- x 1))))
    )
)

(print (g 5));  (5 6 7 8 9)
(print (g 15)); (15 14 13 12 11)
