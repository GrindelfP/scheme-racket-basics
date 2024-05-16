#lang racket

(define (f x)
  (f1 x 1 2 1 1e-12)
  )


(define (f1 x sum n x^n eps)
  (if (> (abs (* n x^n)) eps)
      (f1
       x
       (+ sum (* n (* x^n x)))
       (+ n 1)
       (* x^n x)
       eps
       )
      sum
      )
  )
