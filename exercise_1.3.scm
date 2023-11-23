(define (square x) (* x x))
(define (sum-of-squares-of-2-larger f s t) 
	(cond ((and (< f s) (< f t)) (+ (square s) (square t)))
		  ((and (< s f) (< s t)) (+ (square f) (square t)))
		  ((and (< t f) (< t s)) (+ (square f) (square s)))
          (else (display "there is not 2 larger numbers"))))
(sum-of-squares-of-2-larger 1 2 3)
 