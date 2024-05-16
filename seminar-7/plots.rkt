#lang scheme

(require plot)

(plot-new-window? #t)

;; (plot (lines (list (list 1 0) (list 1 1 ) (list 0 0) )))

;; beautiful pattern
(define liss
  (lambda (n m phi t dt)
    (if (> t (* 2 pi))
        null
        (cons (list (cos (+ (* n t) phi)) (cos (* m t)))
              (liss n m phi (+ t dt) dt )
              )
        )
    )
  )


;; (plot (lines (liss 4 5 (/ pi 3) 0 0.001)))


;; a dragon
(define dragon
  (lambda (lst n)
    (if (= n 0)
        lst
        (dragon (povlist (car lst) lst (cdr lst)) (- n 1))
        )
    )
  )

(define povlist
  (lambda (Opov lst chto)
    (if (null? chto)
        lst
        (povlist Opov
                 (cons (pov Opov
                            (car chto)
                            )
                       lst
                       )
                 (cdr chto)
                 )
        )
    )
  )

(define pov
  (lambda (Opov Cpov)
    (list
     (- (car Opov)
        (- (cadr Cpov)
           (cadr Opov))
        )
     (+ (cadr Opov)
        (- (car Cpov)
           (car Opov)
           )
        )
     )
    )
  )

(plot (lines (dragon (list (list 0 0) (list 1 0)) 20)))
