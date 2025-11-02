% Check if a character is a vowel
vowel(a).
vowel(e).
vowel(i).
vowel(o).
vowel(u).

% Base case: empty list has 0 vowels
count_vowels([], 0).

% If head is a vowel, count it
count_vowels([H|T], Count) :-
    vowel(H),
    count_vowels(T, RestCount),
    Count is RestCount + 1.

% If head is not a vowel, skip it
count_vowels([_|T], Count) :-
    count_vowels(T, Count).
