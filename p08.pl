compress([],[]).
compress([X],[X]).
compress([X,X|Xs],Ys):- compress([X|Xs],Ys).
compress([X,Y|Xs],[X|Ys]):- X\=Y, compress([Y|Xs],Ys).
