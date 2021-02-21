%---------------Tareas----------------
% mainFiboIter
% mainEXP 
% mainSin 
% mainCos 
% mainPrimoRango
%-------------Factorial------------------
mainFact :-
  write('X: '),
	read(X),
	factorial(X,R),
	write('Factorial de '), write(X), write(' Es: '), write(R).
factorial(1,1):-!.
factorial(2,2):-!.
factorial(X,R):-
	X > 0,
	X1 is X-1,
	factorial(X1,R1),
	R is R1*X.
%--------------Fibonacci-----------------
mainFiboInter :-
 write('X: '),
	read(X),
	fibonacci(X,R),
	write('Fibonacci de '), write(X), write(' Es: '), write(R).
fibonacci(0,0):- !.
fibonacci(1,1):- !.
fibonacci(X,R):-
	X1 is X-1,
	X2 is X-2,
	fibonacci(X1,R1),
	fibonacci(X2,R2),
	R is R1 + R2.
%--------------Exponencial-----------------
mainEXP :-
 write('X: '), read(X),
 write('Cuantas interaciones? '), read(I),
 exp(0,I,X,R),
 write('e^'), write(X), write(' Es aprox: '), write(R), nl.
exp(_,_,0,1) :- !.
exp(Act,Lim,_,0) :-
 Act>Lim, !.
exp(Act,Lim,X,R) :-
  Act1 is Act+1,P is X**Act, factorial(Act,F),
  exp(Act1,Lim,X,R1),
  R is R1+(P/F).
%--------------Seno----------------- 
mainSin :-
 write('X: '), read(X),
 write('Cuantas interaciones? '), read(I),
 sin(0,I,-1,X,R),
 write('Sin de'), write(X), write(' Es aprox: '), write(R), nl.
sin(Act,Lim,_,_,0) :-
 Act>Lim, !.
sin(Act,Lim,Signo,X,R) :-
 Act1 is Act+1,A is X**((2*Act)+1),
 D is ((2*Act)+1), factorial(D,F),
 Signo1 is Signo**Act,
 sin(Act1,Lim,Signo,X,R1),
 R is R1+((A*Signo1)/F).
%--------------Coseno----------------- 
mainCos :-
 write('X: '), read(X),
 write('Cuantas interaciones? '), read(I),
 cos(0,I,-1,X,R),
 write('Cos de '),write(X), write(' Es aprox: '), write(R), nl.
cos(Act,Lim,_,_,0) :-
 Act>Lim, !.
cos(Act,Lim,Signo,X,R) :-
 Act1 is Act+1,A is X**((2*Act)),
 D is (2*Act), factorial(D,F),
 Signo1 is Signo**Act,
 cos(Act1,Lim,Signo,X,R1),
 R is R1+((A*Signo1)/F).
%-------------Primo------------------
mainPrimoRango :-
 write('Valor inferior: '), read(Inf), nl,
 write('Valor Superior: '), read(Sup), nl,
 write('Los primos son:'), nl,
 res(Inf,Sup).
res(Inf,Sup) :-
 Inf>Sup, !.
res(Inf,Sup) :-
 esPrimo(Inf,R), validar(Inf,R),
 Inf1 is Inf+1,
res(Inf1,Sup).
esPrimo(N,1) :-
 cuentaDiv(N,1,X), X = 2, !.
esPrimo(_,0).
cuentaDiv(N,Act,0) :-
 Act > N, !.
cuentaDiv(N,Act,X) :-
 R is N mod Act,R=0, !,
 Act1 is Act+1, cuentaDiv(N,Act1,X1),
 X is X1+1.
cuentaDiv(N,Act,X) :-
 Act1 is Act+1, cuentaDiv(N,Act1,X).
validar(N,1) :- 
 write(N),write(',') , !.
validar(_,0) :-
 write(""), !.