% safe(Piece, ListOfPieces)
safe(_,[R/C]).
safe(R1/C1, [R2/C2|T]) :- 
    C1 =\= C2,
    C1 - C2 =\= R1 - R2,
    C1 - C2 =\= R2 - R1,
    safe(R1/C1, T).

range(L,U,L) :-U >= L.
range(L,U,X) :-U > L, N is L + 1, range(N,U,X).

build(R/C,[],[R/C]).
build(R/C,B,R) :-
    safe(R/C,B),
    append(R/C,B,R).

queens(B) :-
    bagof(X/Y, build(X/Y,R,B), B).
