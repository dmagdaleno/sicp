(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (ave x y) 
  (/ (+ x y) 2))

(define (improve guess x)
  (ave guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))
