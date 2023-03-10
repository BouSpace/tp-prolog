man(john).
woman(frida).
woman(nelly).
duck(donald).
loves(john, frida).
loves(frida, donald).
loves(nelly, donald).
loves(donald, nelly).

% and here is ourfirstrule
sad(X):- loves(X, Y), loves(Y, Z), X\=Z.
