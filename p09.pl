pack([],[]).
pack([X|Xs],[Z|Zs]) :- subpack(X,Xs,Ys,Z), pack(Ys,Zs).

subpack(X,[],[],[X]).
subpack(X,[Y|Ys],[Y|Ys],[X]) :- X \=Y.
subpack(X,[X|Xs],Qs,[X|Zs]) :- subpack(X,Xs,Qs,Zs). 


