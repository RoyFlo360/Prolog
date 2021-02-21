%Particion de numeros
main:-
	write('N: '),
	read(N),
	findall(L,p(N,N,L),Lista),imprimeLista(Lista).
	

p(_,0,[]):-!.
p(Max,N,[Valor | Resto]):-
	menor(Max,N,Valor),
	N1 is N - Valor,
	p(Valor,N1,Resto).

p(Max,N,Lista):-
	menor(Max,N,Valor),
	Val1 is Valor-1,
	Val1 > 0,
	p(Val1,N,Lista).

menor(A,B,A):-
	A=<B,!.
menor(_,B,B).

imprimeLista([]):-!.
imprimeLista([X | Resto]):-
	write(X),
	nl,
	imprimeLista(Resto).