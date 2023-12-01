Exercise 1.11: A function f is defined by the rule that
;f (n) = { n if n < 3,
;        { f (n − 1) + 2f (n − 2) + 3f (n − 3) if n ≥ 3.


; RECURSIVE PROCESS
(define (f n) 
  (if (< n 3)
      n
      (+ (f (- n 1)) 
         (* 2 (f (- n 2))) 
         (* 3 (f (- n 3))))))
(f 6)


; ITERATIVE PROCESS
(define (f n)
    (define (f-iter n-1 n-2 n-3 nth)
        (if (= n nth)
            n-1
            (f-iter (+ n-1 (* n-2 2) (* n-3 3)) n-1 n-2 (+ nth 1))))
    (f-iter 2 1 0 2))
(f 2)