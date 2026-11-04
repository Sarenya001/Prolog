flatten_list([],[]).

flatten_list([H|T],R) :-
    is_list(H),
    flatten_list(H,A),
    flatten_list(T,B),
    append(A,B,R).

flatten_list([H|T],[H|R]) :-
    \+ is_list(H),
    flatten_list(T,R).