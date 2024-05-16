#lang scheme

(define pa+pb
  (lambda (pa pb)
    (if (null? pa)
        pb
        (if (null? pb)
            pa
            (cons (+ (car pa) (car pb))
                  (pa+pb (cdr pa) (cdr pb))
                  )
            )
        )
    )
  )
