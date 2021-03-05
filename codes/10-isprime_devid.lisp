;;;; DEVID FINDS COUNT OF DEVISORS OF A NUMBER FROM 1 TO Y
;;;; ISPRIME SAYS WHETHER N IS PRIME OR NOT

(defun devid (x y)
    (cond
        ((eq 1 y) 1)
        (t  (cond
                ((eq 0 (mod x y)) (+ 1 (devid x(- y 1))))
                (t (devid x (- y 1)))
            )
        )
    )
)

(defun devid-count(x)
    (devid x x)
)

(defun isPrime(n)
    (cond
        ((eq 2 (devid-count n)) t)
        (t NIL)
    )
)

(print (devid-count 3))
(print (isPrime 3))
