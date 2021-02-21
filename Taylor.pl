%Taylor
main:-
	write('X: '),
	read(X),
	write('I: '),
	read(I),
	operaciones(X,I,1,1).

operaciones(0,_,_,1):-nl,write('1'),!.
operaciones(_,0,_,1):-nl,write('1'),!.
operaciones(X,I,C,R):-
	C < I,
	P is X^C,
	factorial(C,F),
	D is P/F,
	C1 is C + 1,
	R1 is R + D,
	operaciones(X,I,C1,R1).

operaciones(X,I,C,R):-
	C =:= I,
	P is X^C,
	factorial(C,F),
	D is P/F,
	C1 is C + 1,
	R1 is R + D,
	operaciones(X,I,C1,R1).

operaciones(_,I,C,R):-
	C > I,
	nl,
	write(R).


factorial(1,1):-!.
factorial(2,2):-!.
factorial(X,R):-
	X > 0,
	X1 is X-1,
	factorial(X1,R1),
	R is R1*X.
	
	
	
		
	