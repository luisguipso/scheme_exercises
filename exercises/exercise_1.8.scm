(define (square x)
  (* x x))
(define (cube x)
  (* x (square x)))
(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess)) 0.000000000000001))


(define (improve guess x) 
  (/ (+ (/ x 
         (square guess)) 
       (* guess 2)) 
     3))



(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
	  (sqrt-iter (improve guess x) x)))	
(define (sqrt x) 
  (sqrt-iter 1.0 x))
(cube (sqrt 123456789123456789))