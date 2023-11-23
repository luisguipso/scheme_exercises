Exercise 1.5: Ben Bitdiddle has invented a test to determine
whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the
following two procedures:
(define (p) (p))
(define (test x y)
(if (= x 0) 0 y))
en he evaluates the expression
(test 0 (p))
What behavior will Ben observe with an interpreter that
uses applicative-order evaluation? What behavior will he
observe with an interpreter that uses normal-order evaluation? Explain your answer. (Assume that the evaluation
27
rule for the special form if is the same whether the interpreter is using normal or applicative order: e predicate expression is evaluated first, and the result determines
whether to evaluate the consequent or the alternative expression.)
;
;
;
;
Awnser: In normal order evaluation the parameter would be evalueated just when needed, so when (test 0 (p)) got evaluated it will be exapanded to 
(if (= 0 0)
    0
    (p)) 
since the predicate is true  it will return 0 and (p) would never be executed.

In applicative order evaluation it will try to evaluate (p) before expanding the test expression and since (p) evaluates to it self it would cause a infinite loop.

A more explained response could be found here: https://sicp-solutions.net/post/sicp-solution-exercise-1-5/