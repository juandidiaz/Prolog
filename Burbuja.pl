/*

Burbuja(Lista1,R).

R unifica cuando es la Lista1 ordenada ascendentemente


*/

burbuja(Lista,Lista):-ordenada(Lista).

		burbuja(Lista, R2):- append(L1,[E1,E2|L2],Lista),
							E1>E2,
							append(L1,[E2,E1|L2],R),
							burbuja(R,R2).

ordenada([]).
ordenada([_]).
ordenada([Cab1, Cab2|Resto]):-
Cab1 =< Cab2,
ordenada([Cab2|Resto]).