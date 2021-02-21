%Adivina un taco

mainTaco:-
    juego(
        ['tiene piña',
         ['es naranja',
         'pastor',
         'campechano'
         ],
         ['esta grasoso',
          'suaperro',
          'bistec'
         ]
        ]
        ).
juego([]):-!, write('Fin'),nl.
juego(X):-
    atom(X),!,
    write('El taco es de: '), write(X), nl.
juego([Pregunta,Uno,_]):-
    write(Pregunta), write('? (si/no): '), read(R),
    R = 'si', !, juego(Uno).
juego([_,_,Dos]) :-
    juego(Dos).
