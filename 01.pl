mulher(pessoa).
mulher(pam).
mulher(liz).
mulher(pat).
mulher(ann).
mulher(madalena).
mulher(samanta).
mulher(francisca).
mulher(duda).
mulher(nina).

homem(pessoa).
homem(tom).
homem(bob).
homem(jim).
homem(hiusu).
homem(gabriel).
homem(guga).
homem(samuel).
homem(montekyo).

genitor(pai, filho).
genitor(mae, filho).
genitor(pai, filha).
genitor(mae, filha).
genitor(pam, bob).
genitor(tom, bob).
genitor(tom, liz).
genitor(bob, ann).
genitor(bob, pat).
genitor(pat, jim).
genitor(gabriel, hiusu).
genitor(madalena, hiusu).
genitor(gabriel, guga).
genitor(madalena, francisca).
genitor(samuel, duda).
genitor(samanta, duda).
genitor(hiusu, montekyo).
genitor(hiusu, nina).
genitor(duda, montekyo).
genitor(duda, nina).

prole(filho, pai).
prole(filho, mae).
prole(filha, pai).
prole(filha, mae).
prole(Y, X):- genitor(X, Y).

mae(mae, filho).
mae(mae, filha).
mae(X, Y):- genitor(X, Y), mulher(X).

pai(pai, filho).
pai(pai, filha).
pai(X, Y):- genitor(X, Y), homem(X).

avos(avo, neto).
avos(avo, neta).
avos(X, Y):-genitor(X, Z), genitor(Z, Y).

irma(irma, irma).
irma(irma, irmao).
irma(X, Y):- genitor(Z, X), genitor(Z, Y), mulher(X), not(X = Y).

irmao(irmao, irma).
irmao(irmao, irmao).
irmao(X, Y):- genitor(Z, X), genitor(Z, Y), homem(X), not(X = Y).

descendente(descendente, ascendente).
descendente(X, Z):- genitor(X, Z).
descendente(X, Z):- genitor(X, Y), descendente(Y, Z).

ascendente(ascendente, descendente).
ascendente(X, Y):- genitor(Y, X).
ascendente(X, Y):- genitor(Y, Z), genitor(Z, X).

tio(tio, sobrinho).
tio(tio, sobrinha).
tio(X, Y):- irmao(X, Z), genitor(Z, Y), not(X = Z).

tia(tia, sobrinho).
tia(tia, sobrinha).
tia(X, Y):- irma(X, Z), genitor(Z, Y), not(X = Z).

avospaternos(avo, avo, neto).
avospaternos(avo, avo, neta).
avospaternos(X, Y, Z):-genitor(X, W), genitor(Y, W), genitor(W, Z), homem(W), homem(X), mulher(Y).

avosmaternos(avo, avo, neto).
avosmaternos(avo, avo, neta).
avosmaternos(X, Y, Z):-genitor(X, W), genitor(Y, W), genitor(W, Z), mulher(W), homem(X), mulher(Y).

