domains
	s = symbol
predicates
	nach(S,S)
	konc(S,S)
	next(S,S)
	next1(S,S)
	next2(S,S)
	out(S)
	out1(S)
clauses
	nach(pc,for).
	konc(pc,end).
	konc(pc,work).
	next(for,prc).
	next(prc,eq).
	next(eq, nz).
	next(to,kz).
	next(downto,kz).
	next(kz,do).
	next(begin, work).
	next(work,end).
	
	next1(nz,to).
	next1(do, begin).
	next2(nz,downto).
	next2(do, work).
	
	out(X):-write(X),write(" - "),next(X,Y),out(Y).
	out(_).
	out1(X):-X <> "nz",write(X),write(" - "),next(X,Y),out1(Y).
	out1(X):-X=nz,write(X),write(" "),next1(X,Y),out1(Y).
	out1(X):-X = "do",write(X),write(" "),next1(X,Y),write(Y),nl.