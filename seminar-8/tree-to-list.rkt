#lang scheme

; makes sorted list from ordered binary tree in a form (root (subtree1) (subtree 2)), where subtree can be null
(define tl
  (lambda (tree)
    (if (null? tree)
        null
        (if (null? (cadr tree))
            (cons (car tree)
                  (tl (caddr tree)))
            (tl (to-right
                 (list (car tree) null (caddr tree))
                 (cadr tree)))))))

(define to-right
  (lambda (what where)
    (if (null? where)
        what
        (list (car where)
              (cadr where)
              (to-right what (caddr where))))))
