% quicksort(input, output)
quicksort([],[]).
quicksort([H|T],L) :-
    partition(H,T,Left,Right),
    quicksort(Left,Sortedleft),
    quicksort(Right,Sortedright),
    append(Sortedleft,[H|Sortedright],L).


partition(_, [], [], []).
partition(P, [H|X], [H|Y], Z) :- H < P, partition(P,X,Y,Z).
partition(P, [H|X], Y, [H|Z]) :- H >= P, partition(P,X,Y,Z).
