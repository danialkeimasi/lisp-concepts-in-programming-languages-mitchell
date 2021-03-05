;;;; common divisors

(defun factor (x y)
    (cond
        ((and (eq (mod x y) 0) (funcall #'isprime y )) t)
        (t nil)
    )
)

(defun cdivisor (x y)
    (cond
        ((eq y 1) NIL)
        ((funcall #'factor x y) (cons y (cdivisor x (- y 1))))
        (T (cdivisor x (- y 1)))
    )
)

(defun commondivisors (x y)
    (cdivisor x y)
)

(cdivisor 10 15)

(defun g(x)
    (cond
        ((eq x 10) NIL)
        (T (cons x (g (+ x 1))))
        (T (cons x (g (- x 1))))
    )
)
