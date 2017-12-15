; 非正常位置输出 0
; 递归版本
(define (pascal m n)
  (cond 
    ((or (< n 0) (= n 0) (< m 0) (= m 0) (< m n)) 0)
    ((= n 1) 1)
    ((= n m) 1)
    (else (+ (pascal (- m 1) (- n 1))
             (pascal (- m 1) n)))))

; 递归版本
(define (pascal-i m n)
  (cond
    ((or (< n 0) (= n 0) (< m 0) (= m 0) (< m n)) 0)
    ((= n 1) 1)
    ((= n m) 1)
    (else (pascal-iterator ))
    ))