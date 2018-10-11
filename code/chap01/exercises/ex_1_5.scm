(define (p) (p))
;;;> p

(define (test x y)
  (if (= x 0)
      0
      y))
;;;> test

(test 0 (p))
> infinite loop

;;; Explanation
;;;
;;; In both forms there will be an infinite loop. 
;;; But in applicative form will happen before the if evaluation and, in the normal form, it will happen after.