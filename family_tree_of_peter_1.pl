% knowledge base
% rules for build family tree
grandma(X, Y) :- mama(X, Z), mama(Z, Y).
grandma(X, Y) :- dad(X, Z), mama(Z, Y).
granddad(X, Y) :- mama(X, Z), dad(Z, Y).
granddad(X, Y) :- dad(X, Z), dad(Z, Y).
child(X, Y) :- dad(Y, X).
child(X, Y) :- mama(Y, X).
sib(X, Y) :- mama(X, Z), mama(Y, Z); dad(X, D), dad(Y, D).
% facts
dad("Алексей Михайлович", "Михаил Федорович").
mama("Алексей Михаилович", "Евдокия Лукьянова").
wife("Алексей Михаилович", "Мария Милославская").
