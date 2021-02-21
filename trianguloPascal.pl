%Triangulo de Pascal
main:-
	write('N: '),
	read(N),
	nl,
	pascal(N,0).

pascal(0,0):- write('1'),!.
pascal(N,K):-
	K < N,
	factorial(N,R1),
	factorial(K,R2),
	Resta is N - K,
	factorial(Resta,R3),
	Mul is R2*R3,
	Div is R1/Mul,
	write(Div),
	write(' '),
	K1 is K + 1,
	pascal(N,K1),!.

pascal(N,K):-
	K =:= N,
	write(''),
	write('1'),!.

factorial(0,1):-!.
factorial(1,1):-!.
factorial(2,2):-!.
factorial(X,R):-
	X > 0,
	X1 is X-1,
	factorial(X1,R1),
	R is R1*X.
		