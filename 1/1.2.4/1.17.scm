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