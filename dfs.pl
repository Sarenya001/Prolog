connected(p,q).
connected(p,r).
connected(q,s).
connected(q,t).
connected(r,u).
connected(r,v).
connected(s,w).
connected(u,x).
connected(v,x).

dfs(S,G,P) :- search(S,G,[S],P).

search(G,G,V,P) :- reverse(V,P).
search(N,G,V,P) :-
    connected(N,X),
    \+ member(X,V),
    search(X,G,[X|V],P).