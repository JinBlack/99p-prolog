lbutone(X,[X|Y]) :- Y=[_].
lbutone(X,[Y|Z]) :- lbutone(X,Z).
