#lang racket

(define (exponent x)

  (define (e x fact base sum x^n eps)
    (if (> (abs (/ (* x^n x) (* fact (+ base 1)))) eps)
        (e
         x
         (* fact (+ base 1))
         (+ base 1)
         (+ sum (/ (* x^n x) (* fact (+ base 1))))
         (* x^n x)
         eps
        )
        sum
        )
    )
  
  (e x 1.0 0 1 1 1e-12)
  )

(define (expQ x)

  (define (e x n n! x^n sum eps)
    (if (> (abs (/ x^n n!)) eps)
        (e
         x
         (+ n 1)
         (* n! n)
         (* x^n x)
         (+ sum (/ x^n n!))
         eps
        )
        sum
        )
    )
  
  (e x 1.0 1 1 0 1e-12)
  )