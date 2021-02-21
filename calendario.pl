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

