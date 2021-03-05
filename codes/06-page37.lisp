;;;; Page 37:

(defun select (x lst)
    (cond
        ((equal lst nil) nil)
        ((equal x (car lst)) (cdr lst))
        (T (select x (cdr lst)))
    )
)

(print (select 4 '(1 2 3 4 5 6 7)))
