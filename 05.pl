:- dynamic pos/2.

pos(robô, cozinha).
pos(tv, quarto).

ande(Destino):-
	retract(pos(robô, Origem)),
	asserta(pos(robô, Destino)),
	format('anda de ~w até ~w',[Origem,Destino]),
	nl.

pegue(X):-
	not(pos(X,_)),
	format('Onde está ~w?',[X]),
	nl,
	read(Y),
	asserta(pos(X, Y)),
	ande(Y),
	format('pega ~w',[X]),nl,!.
pegue(X):- 
	pos(X, Destino),
	ande(Destino),
	format('pega ~w',[X]),nl,!.

solte(X):-
	pos(robô, Destino),
	retract(pos(X, Origem)),
	asserta(pos(X, Destino)),
	format('solta ~w',[X]),
	nl.