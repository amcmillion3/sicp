## Ex 1.5
This is applicative vs normal order. 
In applicative order the conditonal will be checked. It will return true and then return 0. 
In normal order it will attempt to evaluate all the arguments first. When it gets to (p) it will crash. (p) just continuously calls itself and it will get stuck in a loop.

Here is another example. 
(define (zero x) (- x x)

### Applicative Order
(zero (random 10))
lets say (random 10) produces 8
(zero 8)
(- 8 8)
= 0 as expected

### Normal Order
(zero (random 10))
(- (random 10) (random 10))
lets say the first (random 10) produces 8 and the second produces 1
(- 8 1)
= 7 NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO!!!!!!!!!!!!!!!!!!!!

Random is not a pure function. Since doing things in normal order generates two random calls we could end up with the function not returning zero as above.

Normal order can be an issue ith non pure functions.
True functional programming protexts you agains issues of when thngs happen.
