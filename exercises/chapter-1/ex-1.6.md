## Ex 1.6
Since "new-if" is a function, and not a special form, each parameter subexpression will be evaluated before the procedure is applied.
It means that when evaluating:

(new-if (good-enough? guess x)
	guess
	(sqrt-iter (improve guess x) x))

The predicate and the two alternatives will always be evaluated, whatever (good-enough? guess x) is evaluated to. Since the second alternative, "else-clause" in new-if definition, is calling the function itself recursively the functions will be stuck in an infinite loop.
