%Triangulos de Sierpinski

main:-
	write('N: '),
	read(N),
	sierpinski(N,1,[0,1,0]).

sierpinski(1,1,[0,1,0]):-
	imprimeLista([0,1,0]),!.

%Contador comienza en 1
sierpinski(N,1,[0,1,0]):-
	imprimeLista([0,1,0]),
	crearLista([0,1,0],0,[],_,N,2),!.


crearLista([],_,_,Lista,N,C):-C1 is C + 1, (C1 =:= N; C1 < N), append(Lista,[0],Lista1),nl,imprimeLista(Lista1),crearLista(Lista1,0,[],_,N,C1).
crearLista([],_,_,Lista,N,C):-C1 is C + 1, C1 > N,append(Lista,[0],Lista1),nl,imprimeLista(Lista1),!.

crearLista([X | Resto],A,ListaPrimera,_,N,C):-
	A1 is X*1,
	celula(A1,A,R),
	append(ListaPrimera,[R],Lista1),
	crearLista(Resto,A1,Lista1,Lista1,N,C),!.

imprimeLista([]):-!.
imprimeLista([X | Resto]):-
	verifica(X,R),
	write(R),
	imprimeLista(Resto).

verifica(0,'|'):-!.
verifica(1,'*'):-!.

celula(0,0,0):-!.
celula(0,1,1):-!.
celula(1,0,1):-!.
celula(1,1,0):-!.