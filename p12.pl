decode([],[]).
decode([[0,_]|Xs],Ys):- !,decode(Xs,Ys).
decode([[N,X]|Xs],[X|Ys]):-N>0,K is N-1, decode([[K,X]|Xs],Ys).
decode([X|Xs],[X|Ys]):- \+ is_list(X), decode(Xs,Ys).
