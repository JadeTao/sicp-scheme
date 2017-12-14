; 复杂度为指数级, (f 100) 会卡死
(define (f n)
  (if (< n 3) 
    n
     (+ (f (- n 1))
             (* 2 (f (- n 2)))
             (* 3 (f (- n 3))))))

;复杂度 O(n)
(define (fi n)
  (if (< n 3)
    n
    (fi-iterator 0 1 2 (- n 2))))

(define (fi-iterator a b c count)
  (if (= count 0)
    c
    (fi-iterator b c (+ c (* 2 b) (* 3 a)) (- count 1))))