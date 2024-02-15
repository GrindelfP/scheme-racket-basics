#lang scheme


(define (s4 n prevSum)
  (if (< n 1000)
      (s4 (+ n 1) (+ prevSum (/ 1. n n n n)))
      prevSum
      )
 )


(define sumOfQuadroDevisers
  (s4 1 0)
  )