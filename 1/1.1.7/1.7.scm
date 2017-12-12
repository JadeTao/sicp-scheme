(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

; old good-enough
;(define (good-enough? guess x)
;  (< (abs (- (square guess) x)) 0.001))

; new good-enough
(define (good-enough? prev curr)
  (< (/ (abs (- prev curr)) prev) 0.01))


(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
    (improve guess x)
    (sqrt-iter (improve guess x)
                x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; 对于特别小的数, 旧的 good-enough 并不能给出正确答案
; 对于特别大的数, 旧的 good-enough 因为精度太小的原因会使计算陷入近似的死循环
; 而新的 good-enough 则表现良好