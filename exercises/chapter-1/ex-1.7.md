## Ex 1.7
For large numbers the computation will never finish. As the guess gets close to the answer, rounding errors prevent the guess from improving because the smallest possible difference between guess^2 and x is greater than the error 0.001.
Thus "good-enough?" will never return true in the worst case scenario.

For small numbers we can't have an accurate answer if x is smaller than the precision 0.001.

We can redefine good-enough?

(define (good-enough? previous-guess guess)
	(< (abs (/ (- guess previous-guess) guess)) 0.000000000000001))

The precision chosen is arbitrary.

The sqrt-iter is refactored like so.

(define (sqrt-iter guess x)
	(if (good-enough? guess (improve guess x))
	    guess
	    (sqrt-iter (improve guess x) x)))
