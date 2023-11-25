(define (factorial n)
	(if (= n 1) 
        n
  		(* n (factorial (- n 1)))))
(factorial 6)

;this is a linear recursive process for computing 6!
;then it will evaluate like:

;(factorial 6)
;(* 6 (factorial 5))
;(* 6 (* 5 (factorial 4)))
;(* 6 (* 5 (* 4 (factorial 3))))
;(* 6 (* 5 (* 4 (* 3 (factorial 2)))))
;(* 6 (* 5 (* 4 (* 3 (* 2 (factorial 1))))))
;(* 6 (* 5 (* 4 (* 3 (* 2 1)))))
;(* 6 (* 5 (* 4 (* 3 2))))
;(* 6 (* 5 (* 4 6)))
;(* 6 (* 5 24))
;(* 6 120)

;a better way of doing this is a linear iterative process for computing 6!:
(define (factorial n)
  (define (fact-iter product counter)
    (if (> counter n)
        product
        (fact-iter (* counter product) 
                   (+ counter 1))))
  (fact-iter 1 1))
(factorial 6)
; this will evaluate as: 
;(factorial 6)
;(fact-iter 1 1 6)
;(fact-iter 1 2 6)
;(fact-iter 2 3 6)
;(fact-iter 6 4 6)
;(fact-iter 24 5 6)
;(fact-iter 120 6 6)
;(fact-iter 720 7 6)
;720