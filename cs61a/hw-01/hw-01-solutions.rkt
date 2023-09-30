#lang simply-scheme

; Homework 1
; Ex 2
(define (square x) (* x x))

(define (squares str)
  (if (empty? str)
      '()
      (se (square (first str)) (squares (bf str)))))

(squares '(1 2 3 4))

; Ex 3
(define (switch str)
  (cond ((empty? str) '())
        ((equal? (first str) 'You) (se 'i (switch (bf str))))
        ((equal? (first str) 'I) (se 'you (switch (bf str))))
        ((equal? (first str) 'me) (se 'you (switch (bf str))))
        ((equal? (first str) 'you) (se 'me (switch (bf str))))
        (else (se (first str) (switch (bf str))))))

(switch '(You told me that I should wake you up))

; Ex 4
(define (ordered? str)
  (if (or (empty? str) (empty? (bf str))) #true
      (and (< (first str) (first (bf str))) (ordered? (bf str)))))

(ordered? '(1 2 3 4 5))
(ordered? '(5 4 3 2 1))

; Ex 5
(define (ends-e str)
  (if (empty? str) '()
      (se (if (equal? (last (first str)) 'e) (first str) '()) (ends-e (bf str)))))

(ends-e '(please put the salami above the blue elephant))