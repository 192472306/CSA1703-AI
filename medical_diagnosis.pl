% Medical Diagnosis Expert System

disease(flu) :-
    symptom(fever),
    symptom(cough),
    symptom(sore_throat).

disease(cold) :-
    symptom(runny_nose),
    symptom(sneezing),
    symptom(sore_throat).

disease(malaria) :-
    symptom(fever),
    symptom(chills),
    symptom(headache).

disease(typhoid) :-
    symptom(fever),
    symptom(abdominal_pain),
    symptom(loss_of_appetite).

symptom(S) :-
    write('Does the patient have '), write(S), write('? (y/n): '),
    read(Reply),
    Reply = y.

diagnose :-
    disease(D),
    write('The patient may have: '), write(D), nl,
    fail.
diagnose :-
    write('Diagnosis complete.'), nl.
