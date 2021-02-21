%Regla de Simpson

main:-
	write('Ingrese limite inferior: '),
	read(A),
	nl,
	write('Ingrese limite superior: '),
	read(B),
	nl,
	write('Ingrese cantidad de rectangulos: '),
	read(N),
	deltax(A,B,N,X,Delta),
	operaciones(A,B,X,Delta,0,0).

deltax(A,B,N,X,Delta):-
	Delta1 is B-A,
	X is A*1,
	Delta is Delta1/N,!.

%Primera evaluación
operaciones(A,B,X,Delta,Bandera,_):-
	A =:= X,
	Exponente is (X^2)/2,
	D1 is e^(-Exponente),
	D2 is sqrt(2*pi),
	R1 is D1/D2,
	X1 is X + Delta,	
	Bandera1 is Bandera + 1,
	operaciones(A,B,X1,Delta,Bandera1,R1).

%Para evaluaciones con multiplicacion 4
operaciones(A,B,X,Delta,Bandera,R):-
	X =\= A,
	X =\= B,
	Bandera =:= 1,
	Exponente is (X^2)/2,
	D1 is e^(-Exponente),
	D2 is sqrt(2*pi),
	F is D1/D2,
	R1 is 4*F,
	R2 is R + R1,
	Bandera1 is Bandera + 1,
	X1 is X + Delta,
	operaciones(A,B,X1,Delta,Bandera1,R2).

%Para evaluaciones con multiplicacion 2
operaciones(A,B,X,Delta,Bandera,R):-
	X =\= A,
	X =\= B,
	Bandera =:= 2,
	Exponente is (X^2)/2,
	D1 is e^(-Exponente),
	D2 is sqrt(2*pi),
	F is D1/D2,
	R1 is 2*F,
	R2 is R + R1,
	Bandera1 is Bandera - 1,
	X1 is X + Delta,
	operaciones(A,B,X1,Delta,Bandera1,R2).

%Ultima evaluacion
operaciones(_,B,X,Delta,_,R):-
	X =:= B,
	Exponente is (X^2)/2,
	D1 is e^(-Exponente),
	D2 is sqrt(2*pi),
	R1 is D1/D2,
	R2 is R + R1,
	M is Delta/3,
	R3 is M*R2,
	nl,
	write('Regla de Simpson: '),
	format("~4f",[R3]). 	