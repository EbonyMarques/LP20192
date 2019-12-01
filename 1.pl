loved(carlos, dora).
loved(dora, lia).
loved(lia, léa).
loved(léa, paulo).
loved(paulo, juca).
loved(juca, dora).
loved(dora, carlos).
loved(dora, rita).
loved(rita, dito).
loved(dito, rita).
loved(rita, carlos).
loved(dora, pedro).
loved(pedro, filha).
loved(filha, carlos).
loved(dora, léa).
loved(dora, paulo).
loved(dora, juca).
loved(dora, dito).
loved(dora, carlos).
loved(dora, filha).

rivals(X,Y) :-
    loved(X,Z),
    loved(Y,Z),
    \+ X = Y.

couple(X,Y) :-
    loved(X, Y),
    loved(Y, X),
    \+ X = Y.

/** <answers>
* loved(carlos, X).
* rivals(X, Y).
* setof((X,Y),couple(X,Y),Couples), member((X,Y), Couples), \+ (Y@<X, member((Y,X), Couples)).
*/