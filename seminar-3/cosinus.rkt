#lang racket


(define (cos x)

  (define (cosinus x n n! x^n sum eps)
    (if (> (abs (...) eps)
        (cosinus
         x
         
         (- (+ sum (/ (* (* x^n x) x) (* (* n1 (+ n 1)) (+ n 2)))) )
         eps
        )
        sum
        )
    )
  
  (cosinus
   x
   2
   2
   (* x x)
   (- 1 (/ (* x x) 2)
   1e-12)
  )
