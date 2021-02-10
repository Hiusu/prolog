denovo:- read(X), tente(X).

tente(X):-
	(X < 30), write('Muito baixo!'), nl, denovo.
tente(X):-
	(X >= 30), (X < 45), write('Baixo!'), nl, denovo.
tente(X):-
	(X > 45), (X =< 60), write('Alto!'), nl, denovo.
tente(X):-
	(X > 60), write('Muito alto!'), nl, denovo.
tente(X):-
	(X =:= 45), write('Acertou!'), !.