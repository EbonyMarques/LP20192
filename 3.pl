/** <answers>
* {Result}/(setof(Actress, Movie^Role^actress(Movie, Actress, Role), Result)).
* {Result}/(setof((Atr1, Atr2), Movie1^Movie2^Atr1^Atr2^Role1^Role2^Role3^Role4^((actor(Movie1, Atr1, Role1) ; actress(Movie1, Atr1, Role1)), (actor(Movie1, Atr2, Role2) ; actress(Movie1, Atr2, Role2)), (actor(Movie2, Atr1, Role3) ; actress(Movie2, Atr1, Role3)), (actor(Movie2, Atr2, Role4) ; actress(Movie2, Atr2, Role4)), not(Atr1 = Atr2), not(Movie1 = Movie2)), Result)).
* {Result}/(findall(Atr, (movie(Movie, Year),(actor(Movie, Atr,_); actress(Movie, Atr,_)), 0 =:= mod(Year, 2)), Actors), sort(Actors, Result)).
*/