my_reverse(X,Y):- rev(X,Y,[]).
rev([],X,X):-!.
rev([X|Xs],Y,A):-rev(Xs,Y,[X|A]).
