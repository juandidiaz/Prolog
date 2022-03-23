/*Ejemplo con listas



[Cabeza|Resto]=[1,2,3].

[Cabeza|Resto]=[1].

[C1,C2|Resto]=[1,2,3].

[Cabeza|Resto]=[]. /*No unifica porque espera que al menos haya un valor*/



num_elem(Lista,N)
	es cierto si N unifica con el numero de elementos en la lista

*/

num_elem([],0).

num_elem([_|Resto], R2):- 
			num_elem(Resto, R),
			R2 is R+1.
