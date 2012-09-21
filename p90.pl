queen([A,B,C,D,E,F,X,Y]) :- t8q([A,B,C,D,E,F,X,Y]).
t8q([X|Xs]) :- t8q(Xs),(X is 1;X is 2;X is 3;X is 4;X is 5;X is 6;X is 7;X is 8),subt8q(X,Xs,1).
t8q([]).
subt8q(X,[Y|Ys],D) :- X>0, X<9,(X \=Y),Y1 is (Y-D), Y2 is (Y+D), (X \= Y1), (X\=Y2), D1 is (D+1), subt8q(X,Ys,D1).
subt8q(_,[],_).

