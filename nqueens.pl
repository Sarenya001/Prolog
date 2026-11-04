queens(N,Q) :-
    numlist(1,N,L),
    permutation(L,Q),
    safe(Q).

safe([]).
safe([X|T]) :-
    safe(T,X,1),
    safe(T).

safe([],_,_).
safe([Y|T],X,D) :-
    abs(X-Y) =\= D,
    D1 is D+1,
    safe(T,X,D1).