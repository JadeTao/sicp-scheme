; 非正常位置输出 0
; 递归版本
(define (pascal row col)
  (cond 
    ((or (< col 0) (< row 0) (< row col)) 0)
    ((or (= col 0) (= col row)) 1)
    (else (+ (pascal (- row 1) (- col 1))
             (pascal (- row 1) col)))))

; 递归版本 (新公式)
(define (factorial n)
    (fact-iter 1 1 n))

(define (fact-iter product counter max-count)
    (if (> counter max-count)
        product
        (fact-iter (* counter product)
                   (+ counter 1)
                   max-count)))

(define (pascal-i row col)
    (/ (factorial row)
       (* (factorial col)
          (factorial (- row col)))))