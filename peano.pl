/*
Aritmética de Peano

Un único símbolo: 0
Un operador, siguiente de algo -> s( )

0 - 0
1 - s(0)
2 - s(s(0))
3 - s(s(s(0)))

suma(X,Y,Z). 

	es cierto si Z unifica con la suma de X + Y.
	
Principio de induccion
1. P(n0)
2. Para todo n>n0,
	P(n-1)->P(n)
	P(N):- N2 is N-1, P(N2).
*/

suma(0, Y, Y).

suma(s(X),Y, s(R)):- suma(X,Y, R).

resta(X,0,X).

resta(X,s(Y), R):- resta(X,Y, s(R)).

multiplicacion(_,0,0).

multiplicacion(X,s(Y), R2):-multiplicacion(X,Y,R),
							suma(R,X,R2).
							
d2p(0,0).

d2p(D,s(P)):-D>0 ,N2 is D-1, d2p(N2,P). 

p2d(0,0).

p2d(s(P),D2):- p2d(P,D), D2 is D+1.

