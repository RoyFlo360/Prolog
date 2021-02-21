%------------------EJERCICIO FACTORIAL------------------
mainFact:-
    write('n: '),
    read(N),factorial(N,R),nl,
    write('n!: '),write(R),nl,
    ctol(R,List),nl,
    contadores(List,0,0,0,0,0,0,0,0,0,0),nl,
    factor(R,FP),write('Factores primos de: '),write(R),nl,
    write(FP).

factorial(0,1) :- !.
factorial(N,F) :-
  N1 is N-1, factorial(N1,F1), F is N*F1.

ctol('',[]):- !.
ctol(C,[H|T]):-
    sub_atom(C, 0, 1, A, H),
    sub_atom(C, 1, A, _, S),
    ctol(S,T).

contadores([],Zero,Uno,Dos,Tres,Cuatro,Cinco,Seis,Siete,Ocho,Nueve) :-
write('(0) '),write(Zero),write(' '),
write('(1) '),write(Uno),write(' '),
write('(2) '),write(Dos),write(' '),
write('(3) '),write(Tres),write(' '),
write('(4) '),write(Cuatro),nl,
write('(5) '),write(Cinco),write(' '),
write('(6) '),write(Seis),write(' '),
write('(7) '),write(Siete),write(' '),
write('(8) '),write(Ocho),write(' '),
write('(9) '),write(Nueve),nl,
!.
contadores([X|Resto],Zero,Uno,Dos,Tres,Cuatro,Cinco,Seis,Siete,Ocho,Nueve) :-
    X=='0'->Zero1 is Zero+1,contadores(Resto,Zero1,Uno,Dos,Tres,Cuatro,Cinco,Seis,Siete,Ocho,Nueve);
    X=='1'->Uno1 is Uno+1,contadores(Resto,Zero,Uno1,Dos,Tres,Cuatro,Cinco,Seis,Siete,Ocho,Nueve);
    X=='2'->Dos1 is Dos+1,contadores(Resto,Zero,Uno,Dos1,Tres,Cuatro,Cinco,Seis,Siete,Ocho,Nueve);
    X=='3'->Tres1 is Tres+1,contadores(Resto,Zero,Uno,Dos,Tres1,Cuatro,Cinco,Seis,Siete,Ocho,Nueve);
    X=='4'->Cuatro1 is Cuatro+1,contadores(Resto,Zero,Uno,Dos,Tres,Cuatro1,Cinco,Seis,Siete,Ocho,Nueve);
    X=='5'->Cinco1 is Cinco+1,contadores(Resto,Zero,Uno,Dos,Tres,Cuatro,Cinco1,Seis,Siete,Ocho,Nueve);
    X=='6'->Seis1 is Seis+1,contadores(Resto,Zero,Uno,Dos,Tres,Cuatro,Cinco,Seis1,Siete,Ocho,Nueve);
    X=='7'->Siete1 is Siete+1,contadores(Resto,Zero,Uno,Dos,Tres,Cuatro,Cinco,Seis,Siete1,Ocho,Nueve);
    X=='8'->Ocho1 is Ocho+1,contadores(Resto,Zero,Uno,Dos,Tres,Cuatro,Cinco,Seis,Siete,Ocho1,Nueve);
    X=='9'->Nueve1 is Nueve+1,contadores(Resto,Zero,Uno,Dos,Tres,Cuatro,Cinco,Seis,Siete,Ocho,Nueve1).

factor(N,L):-factores(N,[2],L).

factores(N,_,[]):-(N=0;N=1;N=1.0),!.
factores(N,[H|T],[H|L]):- 0 is N mod H,!,N1 is N / H,factores(N1,[H|T],L).
factores(N,[H|T],L):-sigprimo([H|T],H1),factores(N,[H1,H|T],L).

nat(0).
nat(X):-nat(Y), X is Y +1.

nodiv(_,[]).
nodiv(N,[H|T]):-X is N mod H,X\==0,nodiv(N,T).

sigprimo([H|T],N):-nat(R),N is H + R,nodiv(N,[H|T]),!.

%------------------TRIANGULO DE PASCAL------------------
mainPascal:-
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

%------------------EJERCICIO MUESTRA------------------
mainMuestra:-
 write('Muestra R:'),read(R),nl,
 write('Poblacion N: '),read(N),nl,
 llenarPoblacion(N,N,Lista),
 muestra(N,R,Lista,Muestra),nl,write(Muestra).

llenarPoblacion(_,0,[]) :-!.
llenarPoblacion(M,N,Lista) :-
 F is M*2+M*3,
 random(0,F,Aleatorio),
 N1 is N-1,llenarPoblacion(M,N1,Lista2),
 insertar(Aleatorio,Lista2,Lista).

muestra(_,0,_,[]):-!.
muestra(N,R,Lista,Muestra):-
 R1 is R-1,muestra(N,R1,Lista,Muestra2),
 random(1,N,Numero),
 element(Lista,Numero,Res),insertar(Res,Muestra2,Muestra).

element([Y|_], 1, Y).
element([_|Xs], N, Y):-
          N2 is N - 1,
          element(Xs, N2, Y).

insertar(X, Lista, [X|Lista]).
%------------------BINARIO------------------
mainBinario:-
 X=[1,3,7,15,31,63,127,255,510,1023,2047,4097,8191,16383,32767,65535,131071,262143,524287,1048575,2097151,4194303,8388607,
 	16777215,33554431,67108863,134217727,268435455,536870911,1073741823,2147483647,4294967295],
 write('N: '),nl,
 read(N),element(X,N,R),
 cuentabinaria(R,Arr),inversa(Arr,Arr2),write(Arr2).

cuentabinaria(0,[0]):-!.
cuentabinaria(N,Arr):-
 N1 is N-1,cuentabinaria(N1,Arr2),
 dec_bin(N,B),insertar(B,Arr2,Arr).

dec_bin(0,'0').
dec_bin(1,'1').
dec_bin(N,B):-N>1,X is N mod 2,Y is N//2,dec_bin(Y,B1),atom_concat(B1, X, B).

inversa([],[]).
inversa([X|L1],L):-inversa(L1,Resto), append(Resto,[X],L).

element([Y|_], 1, Y).
element([_|Xs], N, Y):-
          N2 is N - 1,
          element(Xs, N2, Y).