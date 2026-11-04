connected(p,q,2).
connected(p,r,4).
connected(q,s,3).
connected(r,u,2).
connected(r,v,5).
connected(s,w,4).
connected(u,x,3).
connected(v,x,1).

bfs(S,G,P) :- search([[S]],G,R), reverse(R,P).

search([[G|T]|_],G,[G|T]).
search([Path|Q],G,R) :-
    Path=[N|_],
    findall([X|Path],
        (connected(N,X,_), \+ member(X,Path)),L),
    append(Q,L,Q1),
    search(Q1,G,R).