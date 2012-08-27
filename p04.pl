count([],0).
count([_|Y],Z):-count(Y,Q),Z is 1+Q.
