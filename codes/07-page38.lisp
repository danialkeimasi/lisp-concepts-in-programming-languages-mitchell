;;;; Page 38: Pure Lisp and Side Effects


(print (rplaca '(1 2 3 4) 5)); (5 2 3 4)
(print (rplacd '(1 2 3 4) 5)); (1 . 5)

(lambda (x) (cons (car x) (cons (rplaca x 5) (car x))))
(print (cons 1 2)); (1 . 2)

(defun crc (x)
    (cons
        (car x)
        (cons (rplaca x 5) (car x))
    )
)

(print (crc '(1 2 3))); (1 (5 2 3) . 5)

(defun crc2 (x)
    (cons
        (car x)
        (cons (cons 5 (cdr x)) (car x))
    )
)

(print (crc2 '(1 2 3))); (1 (5 2 3) . 1)
