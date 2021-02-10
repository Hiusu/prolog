:- dynamic pos/2.

pos(rob�, cozinha).
pos(tv, quarto).

ande(Destino):-
	retract(pos(rob�, Origem)),
	asserta(pos(rob�, Destino)),
	format('anda de ~w at� ~w',[Origem,Destino]),
	nl.

pegue(X):-
	not(pos(X,_)),
	format('Onde est� ~w?',[X]),
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
	pos(rob�, Destino),
	retract(pos(X, Origem)),
	asserta(pos(X, Destino)),
	format('solta ~w',[X]),
	nl.