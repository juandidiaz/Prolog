/*

reverse(+List, -ListR).
		Es cierto si en ListR está List
		pero en orden inverso

*/

inverso([],[]).

inverso([Cabeza|Resto], R2):-inverso(Resto,R),
							insertar_final(Cabeza,R,R2).
							
							
							
/*

insertar_final(Elem,Lista,R) es cierto si R unifica
						con una lista que contiene los elementos de Lista con 
						Elem insertado al final

*/

insertar_final(X,[],[X]).

insertar_final(X,[Cabeza|Resto],[Cabeza|R]):-insertar_final(X,Resto,R).

/*

elemento_enesimo(+Pos,+Lista,-Elem)
					es cierto si Elem unifica	
				    con un numero que es la posicion
					Pos de la Lista
					

		
*/

elemento_enesimo(1,[Cabeza|_],Cabeza).

elemento_enesimo(Pos,[_|Resto], R2):- Pos>1,
										P1 is Pos-1,
										elemento_enesimo(P1,Resto,R2).

