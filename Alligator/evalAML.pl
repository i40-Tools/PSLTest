:- multifile(clause1/2).

 readFile(X,N):-
       open(X,read,Str),
         read(Str,N),
         close(Str).
 eval:-
  working_directory(DIR, DIR),
    atom_concat(DIR, 'exampleAML.pl', AML_RULE),
    atom_concat(DIR, 'semi1.pl', SEMI1),
 assert(amlPredicates(
 [
 'isRelated','hasAttribute','notRelated'
  ]
 )),
 consult(SEMI1),
 consult(AML_RULE),
 consult(X),
 tdb.

 writePredicates:-
  working_directory(DIR, DIR),
    atom_concat(DIR, 'writeRules.pl', WRITE_RULE),
    atom_concat(DIR, 'output.txt', OUTPUT),

 readFile(OUTPUT,Z),
 open(Z,write,FileName),
 consult(WRITE_RULE),
 myWrite(FileName),close(FileName).
