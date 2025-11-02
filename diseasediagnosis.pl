% file: disease_diagnosis.pl
% Simple expert system

go :-
    write('What is the patient''s name? '),
    read(Patient),
    hypothesis(Patient, Disease),
    format('~w probably has ~w.~n', [Patient, Disease]),
    !.

go :-
    write('Sorry, I don''t seem to be able to diagnose the disease.'), nl.

% hypotheses
hypothesis(Patient, cold) :-
    symptom(Patient, cough),
    symptom(Patient, sore_throat),
    symptom(Patient, runny_nose),
    symptom(Patient, headache).

hypothesis(Patient, flu) :-
    symptom(Patient, fever),
    symptom(Patient, chills),
    symptom(Patient, body_ache),
    symptom(Patient, cough),
    symptom(Patient, sore_throat).

hypothesis(Patient, measles) :-
    symptom(Patient, fever),
    symptom(Patient, cough),
    symptom(Patient, conjunctivitis),
    symptom(Patient, rash).

% ask about a symptom and read response
symptom(Patient, Symptom) :-
    format('Does ~w have ~w (y/n)? ', [Patient, Symptom]),
    read(Response),
    Response = y.
