(define (cbrt x)
  (define (square x) (* x x))

  ;; New improve formula for cube root.
  (define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess))
       3) )

  ;; New good enough test for cube root.
  (define (good-enough? guess x)
    (< (abs (- guess (/ x (square guess))))
       (/ guess 1000000)) )
  
  (define (try guess)
    (if (good-enough? guess x)
        guess
        (try (improve guess x))))

  (try 1.0))
