#lang scheme

(define df
  (lambda (pol)
    (df1 (cdr pol) 1)))

(define df1
  (lambda (pol n)
    (if (null? pol)
        null
        (cons (* (car pol) n)
        (df1 (cdr pol) (+ n 1))))))
