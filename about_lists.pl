:- module(about_lists, 
	[my_first/2, my_last/2, my_penultimate/2, my_element_at/3,
	my_number_of/2, my_reverse/2, is_palindrome/1, my_flatten/2,
	my_compress/2, my_pack/2, my_encode/2, my_encode_modified/2,
	my_encode_reverse/2, my_encode_direct/2, my_duplicate/2,
	my_duplicate_for_n/3, my_drop/3, my_split/4, my_slice/4,
	my_rotate/3, remove_at/4, insert_at/4, range/3]).


my_first(H, [H|_]).
my_first(_,_) :- false.

my_last(X, [X]).
my_last(X, [_|T]) :- my_last(X,T).
my_last(_,_) :- false.

my_penultimate(X, [_|T]) :- my_penultimate(X, T).
my_penultimate(X, [X,Y]).
my_penultimate(_,_) :- false.

my_element_at(X,[X|_], 1).
my_element_at(X,[_|T], C) :-
    NextC is C-1,
    my_element_at(X, T, NextC).
my_element_at(_,_,_) :- false.

my_number_of(C, [H|T]) :-
    my_number_of(NextC, T),
    C is NextC+1.
my_number_of(0,[]).
my_number_of(_,_) :- false.


% bad way: each callt o append is 0(n^2)
my_reverse_bad([], []).
my_reverse_bad([H|T], Rev) :-
    reverse(T, Trev),
    append(Trev, [H], Rev).
my_reverse_bad(_,_) :- false.

% good way....overload the name with params we need
my_reverse(X, Xrev) :- my_reverse(X, [], Xrev).
my_reverse(_,_) :- false.

my_reverse([], Rev, Rev).  % base case
my_reverse([H|T], Prev, Rev) :-
    my_reverse(T, [H|Prev], Rev).

is_palindrome(X) :-
    my_reverse(X, X).
is_palindrome(_) :- false.




my_flatten(_,_) :- false.

my_compress(_,_) :- false.

my_pack(_,_) :- false.

my_encode(_,_) :- false.

my_encode_modified(_,_) :- false.

my_encode_reverse(_,_) :- false.

my_encode_direct(_,_) :- false.

my_duplicate(_,_) :- false.

my_duplicate_for_n(_,_,_) :- false.

my_drop(_,_,_) :- false.

my_slice(_,_,_,_) :- false.

my_split(_,_,_,_) :- false.

my_rotate(_,_,_) :- false.

remove_at(_,_,_,_) :- false.

insert_at(_,_,_,_) :- false.

range(_,_,_) :- false.
