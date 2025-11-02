% --- Facts about teachers and their subjects ---
teaches(john, math).
teaches(jane, english).
teaches(bob, science).
teaches(sue, history).
teaches(tom, art).

% --- Facts about students and their subjects ---
takes(alice, math).
takes(alice, science).
takes(bob, english).
takes(bob, science).
takes(carol, history).
takes(carol, art).
takes(dave, math).
takes(dave, english).
takes(dave, art).

% --- Predicate: subjects taught by a teacher ---
teaching_subjects(Teacher, Subject) :-
    teaches(Teacher, Subject).

% --- Predicate: students taking a given subject ---
taking_students(Subject, Student) :-
    takes(Student, Subject).
