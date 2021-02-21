%Arabigos a romanos

%romano(M,C,D,U)

romano(0,0,0,0):-!.
romano(1,C,D,A):-
	write('M'),romano(0,C,D,A),!.
romano(2,C,D,A):-
	write('MM'),romano(0,C,D,A),!.
romano(3,C,D,A):-
	write('MMM'),romano(0,C,D,A),!.


romano(0,1,D,A):-
	write('C'),romano(0,0,D,A),!.
romano(0,2,D,A):-
	write('CC'),romano(0,0,D,A),!.
romano(0,3,D,A):-
	write('CCC'),romano(0,0,D,A),!.
romano(0,4,D,A):-
	write('CD'),romano(0,0,D,A),!.
romano(0,5,D,A):-
	write('D'),romano(0,0,D,A),!.
romano(0,6,D,A):-
	write('DC'),romano(0,0,D,A),!.
romano(0,7,D,A):-
	write('DCC'),romano(0,0,D,A),!.
romano(0,8,D,A):-
	write('DCCC'),romano(0,0,D,A),!.
romano(0,9,D,A):-
	write('CM'),romano(0,0,D,A),!.



romano(0,0,1,A):-
	write('X'),romano(0,0,0,A),!.
romano(0,0,2,A):-
	write('XX'),romano(0,0,0,A),!.
romano(0,0,3,A):-
	write('XXX'),romano(0,0,0,A),!.
romano(0,0,4,A):-
	write('XL'),romano(0,0,0,A),!.
romano(0,0,5,A):-
	write('L'),romano(0,0,0,A),!.
romano(0,0,6,A):-
	write('LX'),romano(0,0,0,A),!.
romano(0,0,7,A):-
	write('LXX'),romano(0,0,0,A),!.
romano(0,0,8,A):-
	write('LXXX'),romano(0,0,0,A),!.
romano(0,0,9,A):-
	write('XC'),romano(0,0,0,A),!.

romano(0,0,0,0):-!.
romano(0,0,0,1):-
	write('I'),!.
romano(0,0,0,2):-
	write('II'),!.
romano(0,0,0,3):-
	write('III'),!.
romano(0,0,0,4):-
	write('IV'),!.
romano(0,0,0,5):-
	write('V'),!.
romano(0,0,0,6):-
	write('VI'),!.
romano(0,0,0,7):-
	write('VII'),!.
romano(0,0,0,8):-
	write('VIII'),!.
romano(0,0,0,9):-
	write('IX'),!.	