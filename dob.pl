dob(sai, date(2006,6,6)).
dob(asha, date(2009,4,4)).
dob(john, date(2000,9,9)).
dob(sue, date(1990,1,1)).
dob(sai, date(1888,3,3)).

lookup(Name,DOB):-dob(Name,DOB).

