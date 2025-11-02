% file: bestfirst.pl
% ---- Graph edges (costs) ----
edge(0,1,3).
edge(0,2,6).
edge(0,3,5).
edge(1,4,9).

% undirected view
connected(X,Y,C) :- edge(X,Y,C).
connected(X,Y,C) :- edge(Y,X,C).

% ---- Best-first (simple) ----
best_first(Start,Goal,Path) :-
    bfs([[Start]], Goal, Path).

% goal found
bfs([[Goal|Rest]|_], Goal, [Goal|Rest]) :- !.

% expand next node paths
bfs([[Node|Rest]|Others], Goal, Path) :-
    findall([Next,Node|Rest],
            ( connected(Node,Next,_), \+ member(Next,[Node|Rest]) ),
            NextPaths),
    append(Others, NextPaths, AllPaths),
    bfs(AllPaths, Goal, Path)
