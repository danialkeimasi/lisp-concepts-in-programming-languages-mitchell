;;;; Example Page 24: Evaluation of Expressions
#||
    Example. Here is a slightly longer Lisp program example, the definition of a function
    that searches a list. The find function takes two arguments, x and y, and searches the
    list y for an occurrence of x. The declaration begins with defun, which indicates
    that this is a declaration. Then follows the name find that is being defined, and the
    expression for the find function:
||#


(defun findit (x y)
    (cond
        ((eq y nil) nil)
        ((eq x (car y)) x)
        (T (findit x (cdr y)))
    )
)

(print (findit 2 '(1 2 3 4 5))); 2
(print (findit 10 '(1 2 3 4 5))); NIL
