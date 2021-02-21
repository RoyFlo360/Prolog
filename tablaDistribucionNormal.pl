%Tabla de dstribucion normal

main:-
	nl,
	write('"Tabla de distribución normal"'),
	nl,nl,
	arriba(0),
	menu(0,0).

arriba(0.09):-
	write('     '),
	write(0.09),
	nl,!.
arriba(A):-
	write('     '),
	format('~2f',[A]),
	A1 is A + 0.01,
	arriba(A1).

menu(0,0):-
	nl,
	write(0.0000),
	write('  '),
	write(0.0000),
	write('     '),
	menu(0.01,0).

menu(Columna,Fila):-
	Columna < 0.10,
	Fila < 3.1,
	B is Columna + Fila,
	deltax(0,B,4,X,Delta),
	operaciones(0,B,X,Delta,0,0,Columna,Fila).

menu(Columna,Fila):-
	nl,
	Fila1 is Fila + 0.1,
	format("~1f",[Fila1]),
	write('  '),
	Columna > 0.09,
	Columna1 is Columna*0,
	menu(Columna1,Fila1).

menu(_,Fila):-
	Fila > 3,
	!.

deltax(A,B,N,X,Delta):-
	Delta1 is B-A,
	X is A*1,
	Delta is Delta1/N,!.

%Primera evaluación
operaciones(A,B,X,Delta,Bandera,_,Columna,Fila):-
	A =:= X,
	Exponente is (X^2)/2,
	D1 is e^(-Exponente),
	D2 is sqrt(2*pi),
	R1 is D1/D2,
	X1 is X + Delta,	
	Bandera1 is Bandera + 1,
	operaciones(A,B,X1,Delta,Bandera1,R1,Columna,Fila).

%Para evaluaciones con multiplicacion 4
operaciones(A,B,X,Delta,Bandera,R,Columna,Fila):-
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
	operaciones(A,B,X1,Delta,Bandera1,R2,Columna,Fila).

%Para evaluaciones con multiplicacion 2
operaciones(A,B,X,Delta,Bandera,R,Columna,Fila):-
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
	operaciones(A,B,X1,Delta,Bandera1,R2,Columna,Fila).

%Ultima evaluacion
operaciones(_,B,X,Delta,_,R,Columna,Fila):-
	X =:= B,
	Exponente is (X^2)/2,
	D1 is e^(-Exponente),
	D2 is sqrt(2*pi),
	R1 is D1/D2,
	R2 is R + R1,
	M is Delta/3,
	R3 is M*R2,
	format("~4f",[R3]),
	write('  '),
	Columna1 is Columna + 0.01,
	menu(Columna1,Fila). 
	
	