%Factores Primos
main:-
	write('X: '),
	read(X),
	write('Factores: '),
	nl,
	factores(X,2).

factores(X,C):-
	X > 1,
	respuesta(C,P),
	P =:= 1,
	divisible(X,C,D),
	D =:= 1,
	nl,
	write(C),
	X1 is X/C,
	factores(X1,C).
%Por si no es divisible******
factores(X,C):-
	X > 1,
	respuesta(C,P),
	P =:= 1,
	divisible(X,C,D),
	D =\= 1,
	C1 is C + 1,
	factores(X,C1).
%Por si el numero no es primo******	
factores(X,C):-
	X > 1,
	respuesta(C,P),
	P =:= 0,
	C1 is C + 1,
	factores(X,C1).
%Termina el programa*********
factores(X,_):-
	X =:= 1,
	!.
%Checar si es divisible*****************************************
divisible(X,C,D):-
	D1 is mod(X,C),
	D1 =:= 0,
	D is 1*1.

divisible(X,C,D):-
	D1 is mod(X,C),
	D1 =\= 0,
	D is 1*0.
%Checar si el numero es primo************************************
primo(X,N):-
	N < X,
	R1 is mod(X,N),
	N1 is N+1,
	R1 \= 0,
	primo(X,N1).

primo(X,N):-
	N =:= X,!.

%Si
respuesta(X,P):-
	primo(X,2),
	P is 1*1.
%No
respuesta(X,P):-
	not(primo(X,2)),
	P is 1*0.