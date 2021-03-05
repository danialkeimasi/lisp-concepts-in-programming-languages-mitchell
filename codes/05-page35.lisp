;;;; Example Page 35: maplist

#||
    A maplist is a function that takes a function and list and applies the function to
    every element in the list. The result is a list that contains all the results of function
    application. Using define to define a recursive function, we can write the maplist as
    follows:
||#

(defun xx (x) (+ x x))

(defun maplist2 (f x)
    (cond
        ((eq x nil) nil)
        (T (cons (funcall f (car x)) (maplist2 f(cdr x))))
    )
)

(print (maplist2 #'xx '(2 4 6))); (4 8 12)
