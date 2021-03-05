;;;; EXAMPLE IN Page 35:

(defun xx (x) (+ x x))

(defun maplist2 (f x)
    (cond
        ((eq x nil) nil)
        (T (cons (funcall f (car x)) (maplist2 f(cdr x))))
    )
)

(print (maplist2 #'xx '(2 4 6)))
