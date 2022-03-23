/*Conversor de decimal a peano con restricciones para que sea reversible

P(n0)
d2p(0,0)
*/

:-use_module(library(clpfd)).

d2p(0,0).

d2p(D,s(P)):-D#>0, D2 #=D-1,
			d2p(D2,P).
