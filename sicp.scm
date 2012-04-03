;A function f is defined by the rule that f (n) = n if n<3 and f (n)
;= f (n - 1) + 2f (n - 2) + 3f (n - 3) if n>= 3. Write a procedure that computes f
;by means of a recursive process. Write a procedure that computes f by means
;of an iterative process.

;recursive
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* (f (- n 2)) 2)
         (* (f (- n 3)) 3))))

;iterative
(define (f n)
  (if (< n 3)
      n
      (f-iter 0 1 2 (- n 3))))

(define (f-iter less3 less2 less1 n)
  (define x (+ less1 (* 2 less2) (* 3 less3)))
  (if (= n 0)
      x
      (f-iter less2 less1 x (- n 1))))
