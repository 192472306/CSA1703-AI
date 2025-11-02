% --- Define fruits and their colors ---
fruit(apple, red).
fruit(banana, yellow).
fruit(grape, purple).
fruit(orange, orange).
fruit(watermelon, green).

% --- Match a fruit with its color ---
match_fruit_color(Fruit, Color) :-
    fruit(Fruit, Color).

% --- Find all fruits with a certain color ---
fruits_with_color(FruitList, Color) :-
    findall(Fruit, fruit(Fruit, Color), FruitList).
