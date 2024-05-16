#lang scheme

;; Sum of two martixes A and B
(define A+B
  (lambda (A B)
    (if (null? B)
        null
        (cons (a+b (car A) (car B))(A+B (cdr A) (cdr B)))
        )
    )
  )

;; Subfunction for A+B
(define a+b
  (lambda (a b)
    (if (null? b)
        null
        (cons (+ (car a) (car b)) (a+b (cdr a) (cdr b)))
        )
    )
  )

;; Multiplication of matrix A on a factor k
(define k*A
  (lambda (k A)
    (if (null? A)
        null
        (cons (k*a k (car A))(k*A k (cdr A)))
        )
    )
  )

;; Subfunction for k*A
(define k*a
  (lambda (k a)
    (if (null? a)
        null
        (cons (* k (car a)) (k*a k (cdr a)))
        )
    )
  )

;; Multiplication of two matrixes A*B
(define A*B
  (lambda (A B)
    (if (null? A)
        null
        (cons (a*B (car A) B)(A*B (cdr A) B))
        )
    )
  )

;; Subfunction for A*B
(define a*B
  (lambda (a B)
    (if (null? (car B))
        null
        (cons (a*b a (listcar B) 0) (a*B a (listcdr B)))
        )
    )
  )

;; Subsubfunction 1 of A*B
(define a*b
  (lambda (a b sum)
    (if (null? a)
        sum
        (a*b (cdr a) (cdr b) (+ sum (* (car a) (car b))))
        )
    )
  )

;; Subsubfunction 2 of A*B
(define listcar
  (lambda (A)
    (if (null? A)
        null
        (cons (car (car A)) (listcar (cdr A)))
        )
    )
  )

;; Subsubfinction 3 of A*B
(define listcdr
  (lambda (A)
    (if (null? A)
        null
        (cons (cdr (car A)) (listcdr (cdr A)))
        )
    )
  )
