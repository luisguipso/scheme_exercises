Exercise 1.7: e good-enough? test used in computing
square roots will not be very effective for finding the square
roots of very small numbers. Also, in real computers, arithmetic operations are almost always performed with limited precision. is makes our test inadequate for very large
numbers. Explain these statements, with examples showing
how the test fails for small and large numbers. An alternative strategy for implementing good-enough? is to watch
how guess changes from one iteration to the next and to
stop when the change is a very small fraction of the guess.
Design a square-root procedure that uses this kind of end
test. Does this work beer for small and large numbers?

;Solution:
(define (square x)
  (* x x))
(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess)) 0.00000000001))
(define (average x y)
  (/ (+ x y) 2))
(define (improve guess x) 
  (average guess (/ x guess)))
(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
	  (sqrt-iter (improve guess x) x)))	
(define (sqrt x) 
  (sqrt-iter 1.0 x))


;for small numbers testing if the difference between the square of the guess and the x would fail fast, because if a number was smaller than the precision we have difined as 0.001
;for large number the problem was rounding errors.

;more detailed explanation: https://sicp-solutions.net/post/sicp-solution-exercise-1-7/