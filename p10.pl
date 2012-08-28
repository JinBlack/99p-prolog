encode([],[]).
encode([X|Xs],[Z|Zs]) :- subpack(X,Xs,Ys,K),numbaPack(K,Z), encode(Ys,Zs).

subpack(X,[],[],[X]).
subpack(X,[Y|Ys],[Y|Ys],[X]) :- X \=Y.
subpack(X,[X|Xs],Qs,[X|Zs]) :- subpack(X,Xs,Qs,Zs). 

numbaPack([Z],[K,Z]):- K is 1.
numbaPack([Z|Zs],[N,Z]) :- numbaPack(Zs,[K,Z]),N is 1+K.
