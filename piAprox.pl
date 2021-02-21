%Aproximacion de PI
main:-
%4(1-1/3+1/5-1/7+...1/N)
	
	write('I: '),
	read(I),
	operacion(I,1,0,1,1).

operacion(1,4,_,_,_):-!.
operacion(I,R,B,D,C):-
	B < 1,
	C < I,
	D1 is D + 2,
	Div is 1/D1,	
	R1 is R - Div,
	B1 is B + 1,
	C1 is C + 1,
	operacion(I,R1,B1,D1,C1).
operacion(I,R,B,D,C):-
	B > 0,
	C < I,
	D1 is D + 2,
	Div is 1/D1,
	R1 is R + Div,
	B1 is B - 1,
	C1 is C + 1,
	operacion(I,R1,B1,D1,C1).

operacion(I,R,_,_,C):-
	C =:= I,
	nl,
	R1 is 4*R,
	nl,
	write(R1),
	!.