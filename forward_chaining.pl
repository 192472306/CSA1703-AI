% Forward chaining example

% Base facts
has_wings(eagle).
has_wings(penguin).

% Rules
can_fly(X) :- has_wings(X), X \= penguin.

% Forward chaining inference
forward_chaining :-
    can_fly(X),
    write(X), write(' can fly'), nl,
    fail.
forward_chaining.
