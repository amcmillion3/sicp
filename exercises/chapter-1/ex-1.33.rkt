#lang simply-scheme
(define (filtered-accumulate filter? combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner
       (if (filter? a) (term a) null-value)
       (filtered-accumulate filter? combiner null-value term (next a) next b))))

; Part 1.

(define (square x) (* x x))

(define (inc x) (+ x x))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) 
         n)
        ((divides? test-divisor n) 
         test-divisor)
        (else (find-divisor 
               n 
               (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (sum-squares-primes a b)
  (filtered-accumulate prime? + 0 square a inc b))

; Part 2.
(define (relative-prime? i n)
    (= (gcd i n) 1))

(define (identity x) x)

(define (product-of-relative-prime n)
  (define (relative-prime? i)
    (= (gcd i n) 1))
  (filtered-accumulate relative-prime? * 1 identity 1 inc n))