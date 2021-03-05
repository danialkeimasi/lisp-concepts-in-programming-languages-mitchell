;;;; Page 24:

(defun find24(x y)
    (cond
        ((eq y nil) nil)
        ((eq x (car y)) x)
        (t (find24 x (cdr y)))
    )
)
