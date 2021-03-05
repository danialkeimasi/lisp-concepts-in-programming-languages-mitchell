;;;; Page 38:

(print (rplaca '(1 2 3 4) 5))
(print (rplacd '(1 2 3 4) 5))

(lambda (x) (cons (car x) (cons (rplaca x 5) (car x))))
(print (cons 1 2))

(defun crc (x)
    (cons
        (car x)
        (cons (rplaca x 5) (car x))
    )
)

(print (crc '(1 2 3)))

(defun crc2 (x)
    (cons
        (car x)
        (cons (cons 5 (cdr x)) (car x))
    )
)

(print (crc2 '(1 2 3)))
