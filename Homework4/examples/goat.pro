% farmer-wolf-goat-cabbage problem

not(X) :- X, !, fail.
not(_).

flipped(west,east).
flipped(east,west).

move([X,W,G,C],[Y,W,G,C]) :- flipped(X,Y).
move([X,X,G,C],[Y,Y,G,C]) :- flipped(X,Y).
move([X,W,X,C],[Y,W,Y,C]) :- flipped(X,Y).
move([X,W,G,X],[Y,W,G,Y]) :- flipped(X,Y).

unsafe([X,Y,Y,_]) :- flipped(X,Y).
unsafe([X,_,Y,Y]) :- flipped(X,Y).

s(X,Y) :- move(X,Y), not(unsafe(Y)).

goal([east,east,east,east]).


solve(Node, Solution) :-
    depthfirst([], Node, Solution).

depthfirst(Path, Node, [Node|Path]) :-
    goal(Node).

depthfirst(Path, Node, Sol) :-
    s(Node, Node1),
    not(member(Node1, Path)),
    depthfirst([Node|Path], Node1, Sol).
