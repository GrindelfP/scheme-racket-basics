#lang scheme
(define (fac n)
  (if (= n 0)
      1
      (* n (fac (- n 1)))
      )
  )

;; better factorial with less memory used is shown below

(define (fac1 n)
  (fac2 n 1)
)

(define (fac2 n facn)
  (if (= n 0)
      facn
      (fac2 (- n 1) (* n facn))
  )
)