%Verificar Numeros Primos
main:-
	write('X: '),
	read(X),
	respuesta(X).

primo(X,N):-
	N < X,
	R1 is mod(X,N),
	N1 is N+1,
	R1 \= 0,
	primo(X,N1).

primo(X,N):-
	N =:= X,!.

respuesta(X):-
	primo(X,2),
	write('Si').

respuesta(X):-
	not(primo(X,2)),
	write('No').