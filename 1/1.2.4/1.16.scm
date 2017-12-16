(define (fast-expt num n)
  (fast-expt-iterator num n 1))

(define (fast-expt-iterator num n a)
  (cond ((= n 0) a)
    ((even? n) (fast-expt-iterator (square num) (/ n 2) a))
    ((odd? n) (fast-expt-iterator num (- n 1) (* num a)))
))