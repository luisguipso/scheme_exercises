Alyssa P. Hacker doesn’t see why if needs to be provided as a special form. “Why can’t I just define it as an ordinary procedure in terms of cond?” she asks. Alyssa’s friend Eva Lu Ator claims this can indeed be done, and she defines a new version of if:

(define (new-if predicate
                then-clause
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
Eva demonstrates the program for Alyssa:

(new-if (= 2 3) 0 5)
5

(new-if (= 1 1) 0 5)
0
Delighted, Alyssa uses new-if to rewrite the square-root program:

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))
What happens when Alyssa attempts to use this to compute square roots? Explain.


Awnser:

;if is a function and not a special-form so each parameter subexpressiong would be evaluated before the procedure is applied. It means that when evaluating: 
;    (new-if (good-enough? guess x)
;        guess
;        (sqrt-iter (improve guess x) x))
;
;Since the second alternative is calling the function itself recursively, the function will be stuck in an infinite loop.
;
;
;On if the predicate is avaliated first, and only if the guess is not good enough the recursion will be executed.