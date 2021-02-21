% ---------------------------------------------Libro de bratko, Travel planning-----------------------------------
:- op( 50, xfy, :).

flight( Place1, Place2, Day, Fnum, Deptime, Arrtime) :-
 timetable( Place1, Place2, Flightlist),
 member( Deptime / Arrtime / Fnum / Daylist, Flightlist),
 flyday( Day, Daylist).

member( X, [X | _] ).

member( X, [_| L] ) :-
 member( X, L).

flyday( Day, Daylist) :-
 member( Day, Daylist).

flyday( Day, alldays) :-
 member( Day, [mo,tu,we,th,fr,sa,su] ).

route(P1, P2, Day,[P1-P2:Fnum:Deptime]):- %Direct flight
flight(P1, P2,Day, Fnum, Deptime,_).

route( P1, P2, Day,[P1-P3 :Fnum1:Dep1|Route]):- %Indirect connection
route( P3, P2, Day, Route),
flight( P1, P3, Day, Fnum1, Dep1,Arr1),
deptime(Route, Dep2),
transfer(Arr1, Dep2).

deptime([_-_ : _ : Dep | _], Dep).

transfer(Hours1:Mins1, Hours2:Mins2) :-
60 * (Hours2 - Hours1) + Mins2 - Mins1 >= 40.

%---------------------------
% A FLIGHT DATABASE
%---------------------------
timetable( edinburgh, london,
 [ 9:40 / 10:50 / ba4733 / alldays,
  13:40 / 14:50 / ba4773 / alldays,
  19:40 / 20:50 / ba4833 / [mo,tu,we,th,fr,su]]).

timetable( london, edinburgh,
 [ 9:40 / 10:50 / ba4732 / alldays,
  11:40 / 12:50 / ba4752 / alldays,
  18:40 / 19:50 / ba4822 / [mo,tu,we,th,fr]]).

timetable( london, ljubljana,
 [ 13:20 / 16:20 / ju201 / [fr],
   13:20 / 16:20 / ju2l3 / [su]]).

timetable( london, zurich,
 [ 9:10 / 11:45 / ba6l4 / alldays,
  14:45 / 17:20 / sr805 / alldays]).

timetable( london, milan,
 [ 8:30 / ll:20 / ba5l0 / alldays,
  11:00 / 13:50 /az459 / alldays]).

timetable( ljubljana, zurich,
 [ 11:30 / 12:40 / ju322 / [tu,th]] ).

timetable( ljubljana, london,
 [ 11:10 / 12:20 / yu200 / [fr],
   11:25 / 12:20 / yu212 / [su]]).

timetable( milan, london,
 [ 9:10 / 10:00 / az458 /alldays,
  12:20 / 13:10 /ba511 / alldays]).

timetable( milan, zurich,
 [ 9:25 / 10:15 / sr621 / alldays,
  12:45 / 13:35 / sr623 / alldays]).

timetable( zurich, ljubljana,
 [ 13:30 / 14:40 / yu323 / [tu,th]]).

timetable( zurich, london,
 [ 9:00 / 9:40 / ba6l3 / [mo,tu,we,th,fr,sa],
  16:10 / 16:55 /sr806/[mo,tu,we,th,fr,su]] ).

timetable( zurich, milan,
 [ 7:55 / 8:45 / sr620 /alldays]).
%-----------------------------------------------Triangulos de Sierpinski--------------------------
mainSier:-
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
% ----------------------------------------------- s(0) a Numero--------------
mainNumeroS :-
	write('Escriba la expresion: '), read(N),
	numero(N,0).

	numero(0,Acu) :- 
	write(Acu), !.
	numero(s(X),Acu) :-
	Act1 is Acu+1,numero(X,Act1).
% ------------------------------------ELEVAR UN NATURAL A UNA POTENCIA NATURAL---------------- 
mainPot :-
	write('Expresion: '),read(N),
	write('Potencia dada en un NATURAL: '),read(P),
	potencia(N,N,P,0).

	potencia(0,_,_,0) :- !.
	potencia(_,_,0,0) :- !.
	potencia(_,_,P,R) :- 
	P = 1,write(R), !.
	potencia(N,N1,P,_) :-
	P1 is P-1,
	producto(N,N1,Aux),
	potencia(N,Aux,P1,Aux).
  
	producto(_,0,0) :- !.
	producto(0,_,0) :- !.
	producto(s(X),Y,Z) :-
	producto(X,Y,Z1), suma(Z1,Y,Z).

	suma(X,0,X) :- !.
	suma(0,X,X) :- !.
	suma(s(X),Y,s(Z)) :-
	suma(X,Y,Z).
%--------------------------------------------Calendario------------------------------
%Muestra el calendario del año x
calendar() :-
    write('Year: '),
    read(X),
    nl,
    write('       '),
    write(X), nl, nl,
    printCal(X).

printCal(N) :-
    isLeap(N),
    first_DayYear(N, D_I),
    printMon(1, D_I, 1), !.
printCal(N) :-
    first_DayYear(N, D_I),
    printMon(1, D_I, 0).

first_DayYear(2000, 7) :- !.
first_DayYear(N, D) :-
    N > 2000,
    daysSum(N, 2000, D_1),
    D_1 mod 7 =:= 0,
    D is 7, !.
first_DayYear(N, D) :-
    N > 2000,
    daysSum(N, 2000, D_1),
    D is D_1 mod 7, !.
first_DayYear(N, D) :-
    daysSubs(N, 2000, D_1),
    D_1 mod 7 =:= 0,
    D is 0, !.
first_DayYear(N, D) :-
    daysSubs(N, 2000, D_1),
    D is 7 - D_1 mod 7.

daysSubs(2000, 2000, 0) :- !.
daysSubs(N, L, R) :-
    isLeap(N),
    N_1 is N + 1,
    daysSubs(N_1, L, R_1),
    R is 2 + R_1, !.
daysSubs(N, L, R) :-
    N_1 is N + 1,
    daysSubs(N_1, L, R_1),
    R is 1 + R_1.

daysSum(2000, 2000, 0) :- !.
daysSum(N, L, S) :-
    N_1 is N - 1,
    isLeap(N_1),
    daysSum(N_1, L, S_1),
    S is 2 + S_1, !.
daysSum(N, L, S) :-
    N_1 is N - 1,
    daysSum(N_1, L, S_1),
    S is 1 + S_1.

isLeap(N) :-
    N mod 400 =:= 0, !.
isLeap(N) :-
    N mod 4 =:= 0,
    N mod 100 =\= 0.

printMon(13, _, _) :- !.
printMon(2, D_I, 1) :-
    N is 2,
    month(N),
    write('Do Lu Ma Mi Ju Vi Sa'), nl,
%    numberOfDays(N, C_D),
    C_D is 29,
    printWeeks(1, C_D, D_I), nl,
    N_1 is N + 1,
    first_DayOfNextMon(N, D_I, 1, D_S),
%    D_S_B is D_S + 1,
    printMon(N_1, D_S, 0), !.
printMon(N, D_I, B) :-
    month(N),
    write('Do Lu Ma Mi Ju Vi Sa'), nl,
    numberOfDays(N, C_D),
    printWeeks(1, C_D, D_I), nl,
    N_1 is N + 1,
    first_DayOfNextMon(N, D_I, B, D_S),
    printMon(N_1, D_S, B).

%first_DayOfNextMon(N, P_N, 0, D) :-
%    numberOfDays(N, D_N),
%    D_I is P_N + D_N,
%    D_I < 7,
%    D is D_I, !.
first_DayOfNextMon(N, P_N, 0, D) :-
    numberOfDays(N, D_N),
    D_I is P_N + D_N,
    D_I mod  7 =:= 0,
    D is 7, !.
first_DayOfNextMon(N, P_N, 0, D) :-
    numberOfDays(N, D_N),
    D_I is P_N + D_N,
    D is D_I mod 7, !.
first_DayOfNextMon(2, P_N, 1, D) :-
%    N =:= 2,
    D_N is 29,
    D_I is P_N + D_N,
    D_I mod 7 =:= 0,
    D is 7, !.
first_DayOfNextMon(2, P_N, 1, D) :-
%    N =:= 2,
    D_N is 29,
    D_I is P_N + D_N,
    D is D_I mod 7, !.
first_DayOfNextMon(N, P_N, 1, D) :-
    numberOfDays(N, D_N),
    D_I is P_N + D_N,
    D_I mod 7 =:= 0,
    D is 7, !.
first_DayOfNextMon(N, P_N, 1, D) :-
    numberOfDays(N, D_N),
    D_I is P_N + D_N,
    D is D_I mod 7.

printWeeks(First_Day, Last_Day, _) :- 
    First_Day > Last_Day, !.
printWeeks(First_Day, Last_Day, Initial_Position) :-
    Initial_Position > 1,
    E is Initial_Position - 1,
    D is 7 - E + 1,
%    D_i_1 is 7 - E,
    printBlanks(E),
    % D is 7 - First_Day + 1,
    imprimir_dias(First_Day, D), nl, 
    printWeeks(D, Last_Day, 1), !.
printWeeks(First_Day, Last_Day, _) :-
    Last_Day - First_Day < 7,
    D is Last_Day + 1,
    imprimir_dias(First_Day, D), nl, !.
printWeeks(First_Day, Last_Day, Initial_Position) :-
    D is First_Day + 7,
    imprimir_dias(First_Day, D), nl,
    D_i_1 is First_Day + 7,
    printWeeks(D_i_1, Last_Day, Initial_Position).

printBlanks(0) :- !.
printBlanks(N) :-
    N_1 is N - 1,
    printBlanks(N_1),
    write('   ').
    
imprimir_dias(Last_Day, Last_Day) :- !.
imprimir_dias(First_Day, Last_Day) :-
    First_Day >= 10,
    D_1 is First_Day + 1,
%    imprimir_dias(D_1, Last_Day),
    write(First_Day), write(' '),
    imprimir_dias(D_1, Last_Day), !.
imprimir_dias(First_Day, Last_Day) :-
    D_1 is First_Day + 1,
%    imprimir_dias(D_1, Last_Day),
    write(' '), write(First_Day), write(' '),
    imprimir_dias(D_1, Last_Day).

numberOfDays(1, 31).
numberOfDays(2, 28).
numberOfDays(3, 31).
numberOfDays(4, 30).
numberOfDays(5, 31).
numberOfDays(6, 30).
numberOfDays(7, 31).
numberOfDays(8, 31).
numberOfDays(9, 30).
numberOfDays(10, 31).
numberOfDays(11, 30).
numberOfDays(12, 31).

month(1) :-
    write('       January'), nl, !.
month(2) :-
    write('      February'), nl, !.
month(3) :-
    write('       March'), nl, !.
month(4) :-
    write('       April'), nl, !.
month(5) :-
    write('       May'), nl, !.
month(6) :-
    write('      June'), nl, !.
month(7) :-
    write('      July'), nl, !.
month(8) :-
    write('      August'), nl, !.
month(9) :-
    write('     September'), nl, !.
month(10) :-
    write('      October'), nl, !.
month(11) :-
    write('     November'), nl, !.
month(12) :-
    write('     December'), nl.

