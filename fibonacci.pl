fibonacci(0,0).
fibonacci(1,1).

fibonacci(N,R):- N>1, N2 is N-1,
					  N3 is N-2,
					  fibonacci(N2,R1),
					  fibonacci(N3,R2),
					  R is R1+R2.