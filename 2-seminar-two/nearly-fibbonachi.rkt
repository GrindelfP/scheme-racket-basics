#lang scheme
  
(define (f n)
  
  (define (f1 a1 a2 a3 n)
    (if (= n 0)
        (+ a1 a3)
        (f1 (+ a1 a3) a1 a2 (- n 1)) 
      )
    )
  
  (if (<= n 2)
      1
      (f1 1 1 1 (- n 3))
      )
  )
