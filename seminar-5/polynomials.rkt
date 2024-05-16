#lang scheme

(define px
  (lambda (pol x)
    (px1 pol x 1 0)
    )
  )

(define px1
  (lambda (pol x x^n sum)
    (if (null? pol)
        sum
        (px1 (cdr pol)
             x
             (* x x^n)
             (+ sum (* (car pol) x^n))
        )
      )
    )
  )

