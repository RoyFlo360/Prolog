%Factorial
main:- 
	write('X: '),
	read(X),
	factorial(X,R),
	write(R).

factorial(1,1):-!.
factorial(2,2):-!.
factorial(X,R):-
	X > 0,
	X1 is X-1,
	factorial(X1,R1),
	R is R1*X.