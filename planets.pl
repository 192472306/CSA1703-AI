
planet(mercury, rocky, hot).
planet(venus, rocky, hot).
planet(earth, rocky, temperate).
planet(mars, rocky, cold).
planet(jupiter, gas_giant, cold).

hot_rocky_planet(Name) :-
    planet(Name, rocky, hot).
