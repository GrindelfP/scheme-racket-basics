#lang racket


;;Function returns length of a passed list
(define len
  (lambda (lst)
    (len1 lst 0)
    )
  )

;;Inside-funciton of len function
(define len1
  (lambda (lst n)
    (if (null? lst)
        n
        (len1 (cdr lst) (+ n 1))
        )
    )
  )


;;Function returns an element at specified index from specified list
(define getElement
  (lambda (lst n)
    (if (null? lst)
        null
        (if (= n 1)
            (car lst)
            (getElement (cdr lst) (- n 1) )
            )
        )
    )
  )


;;Function removes element at speciefied index from specified list
(define removeElement
  (lambda (lst n)
    (if (null? lst)
        null
        (if (= n 1)
            (cdr lst)
            (cons (cdr lst) (removeElement (cdr lst) (- n 1)))
            )
        )
    )
  )


;;Function reverts specified list
(define revert
  (lambda (lst)
    (revert1 lst null)
    )
  )
;;Inside-function of revert function
(define revert1
  (lambda (lst lst2)
    (if (null? lst)
        lst2
        (revert1 (cdr lst) (cons (cdr lst) lst2))
        )
    )
  )


















































