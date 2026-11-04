in_room(monkey).
in_room(chair).
in_room(banana).

at(monkey,corner).
at(chair,window).

move_chair :-
    in_room(monkey),
    in_room(chair),
    in_room(banana).

climb :- move_chair.
grasp :- climb.

reach_banana :- grasp.