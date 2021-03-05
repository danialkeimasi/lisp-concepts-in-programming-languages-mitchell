;;;; Page 31:

(defun substitute31 (exp1 var exp2)
    (cond
        ((atom exp2) (cond ((eq exp2 var) exp1) (T exp2)))
        (T (cons (substitute31 exp1 var (car exp2))
                 (substitute31 exp1 var (cdr exp2))
           )
        )
    )
)

(defun substituteandeval (x y z)
    (eval (substitute31 x y z))
)

(print (substituteandeval 2 'x '(+ 5 x)))

(defun f(x)
    (cond
        ((eq x 0) 0)
        (T (+ x(f (- x 1))))
    )
)
