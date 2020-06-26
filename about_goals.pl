:- module(about_goals, [parent/2, equal/2]).

parent(adam, steve).

equal(adam,steve) :- false.
equal(a,a) :- true.
