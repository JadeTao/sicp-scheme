(define (sum-of-squares a b)
  (+ (* a a) (* b b)))

(define (max a b)
  (if (> a b)
    a
    b))

(define (sum-of-squares-of-max-two a b c)
 (sum-of-squares (max a b) (max (max a b) c))