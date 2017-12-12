(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

; 题目给出的 improve 函数
(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess))
    3))

; 旧的 good-enough 函数
(define (good-enough? guess x)
  (< (abs (- (cube guess) x))
    0.001))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
    guess
    (cube-root-iter (improve guess x)
                x)))

(define (cube-root x)
  (cube-root-iter 1.0 x))