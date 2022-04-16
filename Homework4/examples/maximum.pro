% maximum(2,3,Z) gives Z = 3
% maximum(3,2,Z) gives Z = 3 and waits (tries backtracking)

maximum(X,Y,X) :- X >= Y.
maximum(X,Y,Y) :- X < Y.


% maximum2(2,3,Z) gives Z = 3
% maximum2(3,2,Z) gives Z = 3 and waits (backtracks with Z = 2)

maximum2(X,Y,X) :- X >= Y.
maximum2(_,Y,Y).


% maximum3(2,3,Z) gives Z = 3
% maximum3(3,2,Z) gives Z = 3 (no backtracking)

maximum3(X,Y,X) :- X >= Y, !.
maximum3(_,Y,Y).
