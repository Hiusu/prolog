start:-read(X), guess(X).

guess(X):-
	(X < 30), write('Muito baixo!'), nl, start.
guess(X):-
	(X >= 30), (X < 45), write('Baixo!'), nl, start.
guess(X):-
	(X > 45), (X =< 60), write('Alto!'), nl, start.
guess(X):-
	(X > 60), write('Muito alto!'), nl, start.
guess(X):-
	(X =:= 45), write('Acertou!'), !.