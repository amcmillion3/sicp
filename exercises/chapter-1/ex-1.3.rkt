#lang simply-scheme

(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))

;; This assumes that x y z are unique
(define (larger-square x y z)
  (cond ((and (> x y) (> y z)) (sum-of-squares x y))
        ((and (> x y) (< y z)) (sum-of-squares x z))
        (else (sum-of-squares y z))))