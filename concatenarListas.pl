/*

concatenar(L1,L2,R).
	es cierto cuando R unifica con una lista
	que contiene los elementos de L1 seguido
	de los elementos de L2

*/

concatenar([],Lista2,Lista2).

concatenar([Cabeza|Resto],Lista2,[Cabeza|R]):- concatenar(Resto,Lista2,R).