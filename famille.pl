homme(elton).
femme(eva).
homme(gaston).
femme(simone).
homme(edouard).
femme(magali).
homme(octave).
homme(george).
femme(nadine).
femme(alize).
femme(sophie).

parent(elton, edouard).
parent(elton, magali).
parent(eva, edouard).
parent(eva, magali).

parent(gaston, octave).
parent(gaston, george).
parent(simone, octave).
parent(simone, george).

parent(magali, nadine).
parent(magali, alize).
parent(magali, sophie).
parent(octave, nadine).
parent(octave, alize).
parent(octave, sophie).

enfant(X, Y) :- parent(Y, X).
fils(X, Y) :- homme(X), parent(Y, X).
fille(X, Y) :- femme(X), parent(Y, X).
pere(X, Y) :- homme(X), (fils(Y, X);fille(Y, X)).
mere(X, Y) :- femme(X), (fils(Y, X);fille(Y, X)).
grand_parent(X, Y) :- parent(Z, Y), parent(X, Z).
grand_pere(X, Y) :- parent(Z, Y), parent(X, Z), homme(X).
grand_mere(X, Y) :- parent(Z, Y), parent(X, Z), femme(X).

