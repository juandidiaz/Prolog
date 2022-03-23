/* Convertidor a Peano


d2p(D,P).
es cierto si P es el numero en Peano equivalente al decimal D.

*/

d2p(0,0).

d2p(D,s(P)):-D>0 ,N2 is D-1, d2p(N2,P). 

p2d(0,0).

p2d(D,P):-


