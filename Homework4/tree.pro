insert(V,empty,node(empty,V,empty)).
insert(V,node(L,V,R),node(L,V,R)).
insert(V,node(L,X,R),node(Ln,X,R)) :- V < X, insert(V,L,Ln).
insert(V,node(L,X,R),node(L,X,Rn)) :- V > X, insert(V,R,Rn).

exists(X,node(_,X,_)).
exists(V,node(L,X,R)) :- V < X, exists(V,L).
exists(V,node(L,X,R)) :- V > X, exists(V,R).
