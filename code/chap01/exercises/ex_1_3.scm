(define (square x) (* x x))

(define (sum-squares x y) (+ (square x) (square y)))

(define (find-and-sum x y z)
   (cond ((and (>= x z) (>= y z)) (sum-squares x y))
         ((and (>= x y) (>= z y)) (sum-squares x z))
         ((and (>= y x) (>= z x)) (sum-squares y z))
   ))

(find-and-sum 1 2 3)
> 13

(find-and-sum 3 2 1)
> 13

(find-and-sum 3 2 2)
> 13

(= (find-and-sum 1 2 3) (sum-squares 2 3))
> #t

(= (find-and-sum 1 2 3) (sum-squares 2 3) (+ (square 2) (square 3)))
> #t