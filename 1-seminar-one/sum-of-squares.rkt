#lang scheme

(define (sumOfSquares n)
  (sumOfSquares-A n 0)
  )

(define (sumOfSquares-A n previousSum)
  (if (= n 0)
      previousSum
      (sumOfSquares-A (- n 1) (+ (* n n) previousSum))
      )
  )

(define (check n)
  (/ (* n (* (+ n 1) (+ (* 2 n) 1))) 6)
  )