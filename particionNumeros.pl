%Particion de numeros

main:-
	write('N: '),
	read(N),
	write(N),
	nl,
	A is N - 2,
	particion2(N,2,A),!.

particion(N,C,[Valor | Resto]):-
	C < N,
	V is Valor - 1,
	append([V | Resto],[1],Lista),
	imprimeLista(Lista),
	nl,	
	C1 is C + 1,
	particion(N,C1,Lista),!.	

particion(N,C,_):-
	C =:= N,!.

particion2(N,C,A):-
	C < A,
	append([A],[C],Lista1),
	imprimeLista(Lista1),
	nl,
	C1 is C + 1,
	A1 is A - 1,
	particion2(N,C1,A1),!.	

particion2(N,C,A):-
	C =:= A,
	P is mod(N,2),
	particion3(C,P,A,N),!.
particion2(N,C,A):-
	C > A,
	C1 is N - 5,particion4(N,C1,[]),!.

particion3(C,0,A,N):-
	append([C],[A],Lista),
	imprimeLista(Lista),nl,C1 is N - 5,particion4(N,C1,[]),!.

particion4(1,_,_):-particion(1,1,[1]),!.
particion4(2,_,_):-particion(2,1,[2]),!.
particion4(3,_,_):-particion(3,1,[3]),!.
particion4(4,_,_):-particion(4,1,[4]),!.
particion4(N,0,_):-
	N1 is N-3,
	append([N1],[2,1],Lista),imprimeLista(Lista),nl,particion(N,1,[N]),!.
particion4(N,1,_):-
	N1 is N-3,
	append([N1],[2,1],Lista),imprimeLista(Lista),nl,particion(N,1,[N]),!.

particion4(N,C,_):-
	N1 is N-3,
	append([N1],[2,1],Lista),imprimeLista(Lista),append([3],[2],Lista1),nl,particion5(N,C,Lista1),!.
particion5(N,C,Lista):-
	C > 0,
	append(Lista,[1],Lista1),
	C1 is C - 1,
	particion5(N,C1,Lista1),!.

particion5(N,C,Lista):-
	C =:= 0,
	imprimeLista(Lista),nl,particion(N,1,[N]),!.


imprimeLista([]):-!.
imprimeLista([X | Resto]):-
	write(X),
	imprimeLista(Resto).	
	

	
  	
