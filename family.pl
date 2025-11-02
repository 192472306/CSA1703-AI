female(pam).
female(liz).
female(ann).
male(tom).
male(bob).
male(jim).

parent(tom, liz).
parent(pam, liz).
parent(tom, bob).
parent(pam, bob).
parent(bob, ann).
parent(liz, jim).

mother(X,Y):- female(X), parent(X,Y).
father(X,Y):- male(X), parent(X,Y).
grandfather(X,Y):- male(X), parent(X,Z), parent(Z,Y).
grandmother(X,Y):- female(X), parent(X,Z), parent(Z,Y).
sister(X,Y):- female(X), parent(Z,X), parent(Z,Y), X \= Y.
brother(X,Y):- male(X), parent(Z,X), parent(Z,Y), X \= Y.
