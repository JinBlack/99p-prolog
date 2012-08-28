encode([],[]).
encode([X|Xs],[Z|Zs]) :- subpack(X,Xs,Ys,Z), encode(Ys,Zs).

subpack(X,[X],[],[2,X]).
subpack(X,[],[],X).
subpack(X,[X,Y|Ys],[Y|Ys],[2,X]) :- X \=Y.
subpack(X,[Y|Ys],[Y|Ys],X) :- X \=Y.
subpack(X,[X|Xs],Qs,[N,Z]) :- subpack(X,Xs,Qs,[K,Z]), N is K+1. 

