%Fibonacci
main:- 
	write('X: '),
	read(X),
	fibonacci(X,R),
	write(R).

fibonacci(0,0):- !.
fibonacci(1,1):- !.
fibonacci(X,R):-
	X1 is X-1,
	X2 is X-2,
	fibonacci(X1,R1),
	fibonacci(X2,R2),
	R is R1 + R2.
		