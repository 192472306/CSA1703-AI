hanoi(1, A, C, _) :-
    write('Move disk from '), write(A), write(' to '), write(C), nl.

hanoi(N, A, C, B) :-
    N > 1,
    M is N - 1,
    hanoi(M, A, B, C),
    hanoi(1, A, C, _),
    hanoi(M, B, C, A).


