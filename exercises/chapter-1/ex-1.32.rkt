#lang simply-scheme
(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulate combiner null-value term (next a) next b))))

(define (identity x) x)

(define (inc x) (+ 1 x))

(define (product a b term next)
  (accumulate * 1 term a next b))

(define (factorial n)
  (product 1 n identity inc))