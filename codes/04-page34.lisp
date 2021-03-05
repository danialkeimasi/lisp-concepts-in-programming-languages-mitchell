;;;; Example Page 34: Higher-Order Functions

#||
    If f and g are mathematical functions, say functions on the integers, then their
    composition f ◦ g is the function such that for every integer x, we have
    (f ◦ g)(x) = f (g(x)).
    We can write composition as a Lisp function compose that takes two functions as
    arguments and returns their composition:
||#

;; (defun compose (f g)
;;     (lambda (x) (f (g x)))
;; )

;; (defun compose (f g)
;;     (lambda (x) (apply f(apply g x)))
;; )

;;;; -----------------------------------------------
;;;; technic 1

(defun compose (f g)
    (lambda (x) (funcall f (funcall g x)))
)

(print
    (funcall
        (compose (lambda (x) (+ x x)) (lambda (x)(* x x)))
        3
    )
); 18

;;;; -----------------------------------------------
;;;; technic 2 (by me)

(defun compose (f g x)
    (funcall f (funcall g x))
)

(print
    (compose (lambda (x) (+ x x)) (lambda (x)(* x x)) 3)
); 18

;;;; -----------------------------------------------
;;;; technic 3

(defun fog (f g x)
    (funcall f (funcall g x))
)

(defun xx (x) (+ x x))
(defun x2 (x) (* x x))

(print (fog #'xx #'x2 3)); 18
(print (fog (lambda (x) (+ x x)) (lambda (x)(* x x)) 3)); 18
