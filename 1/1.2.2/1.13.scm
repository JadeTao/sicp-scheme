(define (fib n)
  (if (or (= n 1) (= n 2))
    1
    (fib-iterator 1 1 (- n 2))))

(define (fib-iterator a b count)
  (if (= count 1)
    (+ a b)
    (fib-iterator b (+ a b) (- count 1))))

(define (pow num n)
  (pow-iterator num num n))

(define (pow-iterator curr num n)
  (if (= n 1)
    curr
    (pow-iterator (* curr num) num (- n 1)))
)
;————————————————————————
(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? prev curr)
  (< (/ (abs (- prev curr)) prev) 0.01))


(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
    (improve guess x)
    (sqrt-iter (improve guess x)
                x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))
;————————————————————————
(define fai
  (/ (+ 1 (sqrt 5)) 2)) 




; 证明
; n = 1 时成立,
; 假设 n = x 时成立,
; 计算 Fib(x+1) 可得 Fib(x+1) = Fib(x) + Fib(x -1)
; 证得Fib(n) = 那个分数.
; 
; 后面易证... 公式太难写啦