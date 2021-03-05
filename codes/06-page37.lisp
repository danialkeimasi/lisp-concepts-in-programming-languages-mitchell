;;;; Page 37:

#||
    Example. In Lisp, we can write a function that takes a list lst and an entry x, returning
    the part of the list that follows x, if any. This function, which we call select, can be
    written as follows:
||#

(defun select (x lst)
    (cond
        ((equal lst nil) nil)
        ((equal x (car lst)) (cdr lst))
        (T (select x (cdr lst)))
    )
)

(print (select 4 '(1 2 3 4 5 6 7))); (5 6 7)
