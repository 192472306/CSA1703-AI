% --- Pattern Matching Program in Prolog ---

% match(Pattern, List)
% true if Pattern is a sublist of List

match(Pattern, List) :-
    append(_, rest, List),         % split the list into any prefix and the rest
    append(Pattern, _, rest).      % pattern should match the beginning of the rest
