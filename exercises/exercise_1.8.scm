Newton’s method for cube roots is based on the fact that if y is an approximation to the cube root of x, then a better approximation is given by the value

(x/y^2 +2y)/3

Use this formula to implement a cube-root procedure analogous to the square-root procedure. (In 1.3.4 we will see how to implement Newton’s method in general as an abstraction of these square-root and cube-root procedures.

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