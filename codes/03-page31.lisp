;;;; Example Page 31: Programs as Data

(defun substituteit (exp1 var exp2)
    (cond
        ((atom exp2) (cond ((eq exp2 var) exp1) (T exp2)))
        (T (cons (substituteit exp1 var (car exp2))
                 (substituteit exp1 var (cdr exp2))
           )
        )
    )
)

(print ( substituteit 2 'x '(+ 5 x 11)) ); (+ 5 2 11)
(print ( eval(substituteit 2 'x '(+ 5 x 11)) )); 18



(defun substitute-and-eval (x y z)
    (eval (substituteit x y z))
)

(print (substitute-and-eval 2 'x '(+ 5 x 11))); 18

(defun f (x)
    (cond
        ((eq x 0) 0)
        (T (+ x(f (- x 1))))
    )
)
