predicates
   men (String)
   woman(String)
   parent(String,String)
   printParent(String)
   printMother(String)
   printFather(String)
   printChildren(String)
   printChildrenAS(String,String)
   printGrandMother(String) 
   printGrandFather(String) 
   printSister(String)
   printBrother(String)
clauses

   men ("Tim").
   men("Job").
   men("Jerry").
   men ("Tom").
   men ("Pat").
   
   woman("Anna").
   woman("Sasha").
   woman ("Janna").
   woman ("Alena").
   
   parent("Tom", "Job").
   parent("Anna", "Job").
   
   parent("Job", "Jerry").
   parent("Janna", "Jerry").
   
   parent("Job", "Alena").
   parent("Janna", "Alena").
   
   parent("Tom", "Tim").
   parent("Anna", "Tim").
   
   parent("Tim", "Pat").
   parent("Sasha", "Pat").
   
   printParent(X):-parent(Y,X),write("parent  "),write(X),write(": "),write(Y),nl,fail.
   printMother(X):-parent(Y,X),woman(Y),write("Mother "),write(X),write(": "),write(Y),nl,fail.
   printFather(X):-parent(Y,X),men(Y),write("Father "),write(X),write(": "),write(Y),nl,fail.
   printChildren(Y):-parent(Y,X),write("Children "),write(Y),write(": "),write(X),nl,fail.
   printChildrenAS(X,Y):-parent(X,Z),parent(Y,Z),write("ChildrenAs "),write(X),write(" and  "),write(Y),write(": "),write(Z),nl,fail.
   printGrandMother(X):-parent(Y,X),parent(Z,Y),woman(Z),write(Z),nl,fail.
   printGrandFather(X):-parent(Y,X),parent(Z,Y),men(Z),write(Z),nl,fail.
   printSister(X):-parent(Y,X),parent(Y,Z),woman(Z),Z<>X,write(Z),!,nl,fail.
   printBrother(X):-parent(Y,X),parent(Y,Z),men(Z),Z<>X,write(Z),!,nl,fail.