#lang simply-scheme
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (inc x) (+ 1 x))

(define (identity x) x)

(define (factorial n)
  (product identity 1 inc n))

(define (pi-term n) 
  (if (even? n) 
      (/ (+ n 2) (+ n 1)) 
      (/ (+ n 1) (+ n 2))))

(define (approx-pi n)
  (* (product pi-term 1 inc n) 4))
