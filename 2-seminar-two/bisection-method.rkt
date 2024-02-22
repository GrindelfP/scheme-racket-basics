#lang racket

(define (f x)
  (- 2 (* x x))
  )


(define (s2 x1 x2)
  (if (< (f x1) 0)
      (if (< (f x2) 0) "?" (s2a x1 x2 (/ (+ x1 x2) 2) 1e-12) )
      (if (< (f x2) 0) (s2a x2 x1 (/ (+ x1 x2) 2) 1e-12) "?" )
      )
  )


(define (s2a x1 x2 xc eps)
    (if (< (abs (- x2 x1)) eps)
        xc
        (if (< (f xc) 0)
            (s2a xc x2 (/ (+ xc x2) 2) eps)
            (s2a x1 xc (/ (+ x1 xc) 2) eps)
        )
    )
  )
