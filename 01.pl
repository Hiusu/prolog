genitor(pam,bob).

genitor(tom,bob).

genitor(tom,liz).

genitor(bob,ann).

genitor(bob,pat).

genitor(pat,jim).




genitor(gabriel,hiusu).

genitor(madalena,hiusu).

genitor(gabriel,guga).

genitor(madalena,francisca).

genitor(samuel,duda).

genitor(samanta,duda).

genitor(hiusu,montekyo).

genitor(hiusu,nina).

genitor(duda,montekyo).

genitor(duda,nina).


mulher(madalena).

mulher(samanta).

mulher(francisca).

mulher(duda).

mulher(nina).




mulher(pam).

mulher(liz).

mulher(pat).

mulher(ann).




homem(hiusu).

homem(gabriel).

homem(guga).

homem(samuel).

homem(montekyo).




homem(tom).

homem(bob).

homem(jim).

prole(Y,X):-genitor(X,Y).

mae(X,Y):-genitor(X,Y), mulher(X).
pai(X,Y):-genitor(X,Y), homem(X).

avos(X,Y):-genitor(X,Z), genitor(Z,Y).

irma(X,Y):-genitor(Z,X), genitor(Z,Y), mulher(X), not(x=y).

descendente(X,Z):-genitor(X,Z).
descendente(X,Z):-genitor(X,Y), descendente(Y,Z).





irmao(X,Y):-genitor(Z,X), genitor(Z,Y), homem(X), not(x=y).

tio(X,Y):-irmao(X,Z), genitor(Z,Y), not(X=Z).

tia(X,Y):-irma(X,Z), genitor(Z,Y), not(X=Z).

avospaternos(X,Y,Z):-genitor(X,W), genitor(Y,W), genitor(W,Z), homem(W), homem(X), mulher(Y).

avosmaternos(X,Y,Z):-genitor(X,W), genitor(Y,W), genitor(W,Z), mulher(W), homem(X), mulher(Y).

ascendente(X,Y):-genitor(Y,X).

ascendente(X,Y):-genitor(Y,Z), genitor(Z,X).