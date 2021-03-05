;;;; EXAMPLE IN Page 34:

;; (defun compose (f g)
;;     (lambda (x) (f (g x)))
;; )

;; (defun compose (f g)
;;     (lambda (x) (apply f(apply g x)))
;; )

(defun compose (f g)
    (lambda (x) (funcall f (funcall g x)))
)

(defun fg (f g x)
    (funcall f (funcall g x))
)
(defun xx (x) (+ x x))
(defun x2 (x) (* x x))

(print
    (funcall
        (compose (lambda (x) (+ x x)) (lambda (x)(* x x)))
        3
    )
)
(print (fg #'xx #'x2 3))
(print (fg (lambda (x) (+ x x)) (lambda (x)(* x x)) 3))
