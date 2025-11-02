% file: birds.pl
bird(eagle, can_fly).
bird(pigeon, can_fly).
bird(ostrich, cannot_fly).

can_fly(Bird) :- bird(Bird, can_fly).
