;;;; Page 24:

(defun find24(x y)
    (cond
        ((eq y nil) nil)
        ((eq x (car y)) x)
        (T (find24 x (cdr y)))
    )
)
