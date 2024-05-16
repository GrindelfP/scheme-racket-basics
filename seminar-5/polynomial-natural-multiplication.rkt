#lang scheme

(define p*a
  (lambda (pol a)
    (if (null? pol)
        null
        (cons (* (car pol) a)
        (p*a (cdr pol) a)))))
