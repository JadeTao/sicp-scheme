; 1.16
(define (fast-expt num n)
  (fast-expt-iterator num n 1))

(define (fast-expt-iterator num n a)
  (cond ((= n 0) a)
    ((even? n) (fast-expt-iterator (square num) (/ n 2) a))
    ((odd? n) (fast-expt-iterator num (- n 1) (* num a)))
))

; 1.17
(define (double n)
  (* n 2))

(define (halve n)
  (/ n 2))

(define (fast-multi a b)
  (fast-multi-iterator a b 0))

(define (fast-multi-iterator a b c)
  (cond ((= b 0) 0)
    ((= b 1) (+ a c))
    ((even? b) (fast-multi-iterator (double a) (halve b) c))
    ((odd? b) (fast-multi-iterator a (- b 1) (+ c a)))
))
; 1.18
; 没看懂这题, 不是跟 1.17 一样的么