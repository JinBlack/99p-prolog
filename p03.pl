element_at(X,[X|Z],1).
element_at(X,[Y|Z],N):- N>1, N1 is N-1, element_at(X,Z,N1).
