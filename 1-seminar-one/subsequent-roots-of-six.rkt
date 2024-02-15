#lang scheme

(define (r6 currentSum previousSum epsilon)
  (if (< (abs (- currentSum previousSum)) epsilon)
      previousSum
      (r6 (sqrt (- 6 currentSum)) currentSum epsilon)
  )
)

(define subsequent6
  (r6 1. 0. 1e-12)
  )