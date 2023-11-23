Exercise 1.4: Observe that our model of evaluation allows
for combinations whose operators are compound expressions. Use this observation to describe the behavior of the
following procedure:
(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))

if b is greater than 0 the compound expression + would be evalueated, then 'a' and 'b' will be added together (+ a b)
if b is less than 0 the compound expression - would be evalueated, then 'b' woulb be changed to positive 
eg.
If in this expressin (- a b) 'a' is equal to 2 and 'b' is iqual to -2  it will evaluate as -> (- 2 -2) then the awnser is 4 because 2-(-2) = 4.