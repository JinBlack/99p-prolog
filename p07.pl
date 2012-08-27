my_flatten([],[]).
my_flatten(X,[X]):- \+ is_list(X).
my_flatten([X|Y],Z) :- my_flatten(X,Xplane),my_flatten(Y,Yplane),append(Xplane,Yplane,Z).

