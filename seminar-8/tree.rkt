#lang scheme

; converts list into tree
(define lt
  (lambda (lst)
    (lt1 lst null)))

(define lt1
  (lambda (lst tree)
    (if (null? lst)
        tree
        (lt1
         (cdr lst)
         (eltree (car lst) tree)))))

(define eltree
  (lambda (el tree)
    (if (null? tree)
        (list el null null)
        (if (> el (car tree))
            (list (car tree) (cadr tree) (eltree el (caddr tree))) #| if element is greater than current root |# 
            (if (< el (car tree))
                (list (car tree) (eltree el (cadr tree)) (caddr tree)) #| if element is lesser than current root |#
                tree #| if element is equal than current root |# )))))
