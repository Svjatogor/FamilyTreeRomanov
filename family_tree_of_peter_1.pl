% knowledge base
% rules for build family tree
grandma(X, Y) :- mama(X, Z), mama(Z, Y).
grandma(X, Y) :- dad(X, Z), mama(Z, Y).
granddad(X, Y) :- mama(X, Z), dad(Z, Y).
granddad(X, Y) :- dad(X, Z), dad(Z, Y).
child(X, Y) :- dad(Y, X).
child(X, Y) :- mama(Y, X).
sib(X, Y) :- mama(X, Z), mama(Y, Z), dad(X, D), dad(Y, D), not(X = Y).
dad(X, Y) :- mama(X, Z), hasband(Z, Y).
wife(X, Y):- hasband(Y, X).
great_grandma(X, Y) :- grandma(X, Z), mama(Z, Y).
great_grandma(X, Y) :- granddad(X, Z), mama(Z, Y).
great_granddad(X, Y) :- grandma(X, Z), dad(Z, Y).
great_granddad(X, Y) :- granddad(X, Z), dad(Z, Y).
grandchild(X, Y) :- child(X, Z), child(Z, Y).
aunt_or_uncle(X, Y) :- dad(X, Z), sib(Z, Y).
aunt_or_uncle(X, Y) :- mama(X, Z), sib(Z, Y).
% facts
% родители Алексея Михаиловича
hasband("Евдокия Лукьянова", "Михаил Федорович").
mama("Алексей Михаилович", "Евдокия Лукьянова").
% ----------------------------------------------------------
% дети Алексея Михайловича от перой жены Марии Милославской
hasband("Мария Мирославская", "Алексей Михаилович").
mama("Иоанн V Алексеевич", "Мария Мирославская").
mama("Софья Алексеевна", "Мария Мирославская").
mama("Федор Алексеевич", "Мария Мирославская").
% дети Алексея Михайловича от второй жены Натальи Нарышкиной
hasband("Наталья Нарышкина", "Алексей Михаилович").
mama("Петр I Алексеевич", "Наталья Нарышкина").
% ----------------------------------------------------------
% у Федора Алексеевича и Марфы Апраксиной не было детей :(
hasband("Марфа Апраксина", "Федор Алексеевич").
% дети Ионанна V Алексеевича от Праскорьи Салтыковой
hasband("Прасковья Салтыкова", "Ионанн V Алексеевич").
mama("Екатерина Иоанновна", "Прасковья Салтыкова").
mama("Анна Иоанновна", "Прасковья Салтыкова").
% дети Петра I от Евдокии Феодоровны
hasband("Евдокия Феодоровна", "Петр I Алексеевич").
mama("Алексей Петрович", "Евдокия Феодоровна").
% дети Петра I от Екатерины I Алексеевны
hasband("Екатерина I Алексеевна", "Петр I Алексеевич").
mama("Анна Петровна", "Екатерина I Алексеевна").
mama("Елизавета Петровна", "Екатерина I Алексеевна").
% ----------------------------------------------------------
% дети Екатерины Иоанновны и Карла Леопольда
hasband("Екатерина Иоанновна", "Карл Леопольд").
mama("Анна Леопольдовна", "Екатерина Иоанновна").
% муж Анны Иоанновны
hasband("Анна Иоанновна", "Фридрих Вильгельм").
% дети Алексея Петровича и Натальи Алексеевны
hasband("Наталья Алексеевна Браун", "Алексей Петрович").
mama("Петр II Алексеевич", "Наталья Алексеевна Браун").
% дети Анны Петровны и Карла Фридриха
hasband("Анна Петровна", "Карл Фридрих").
mama("Петр III Федорович", "Анна Петровна").
% ----------------------------------------------------------
% ребенок Анны Леополльдовны и Антона Ульриха
hasband("Анна Леопольдовна", "Антон Ульрих").
mama("Иоанн VI Антонович", "Анна Леопольдовна").
% ребенок Петра III и Екатерины второй
hasband("Екатерина II Алексеевна", "Петр III Федорович").
mama("Павел I Петрович", "Екатерина II Алексеевна").
% ----------------------------------------------------------
% первая жена Павла Петровича
hasband("Наталья Алексеевна Гессен", "Павел I Петрович").
% дети Павла I Петровича и Марии Федоровны
hasband("Мария Федоровна Вертембергская", "Павел I Петрович").
mama("Александр I Павлович", "Мария Федоровна Вертембергская").
mama("Николай I Павлович", "Мария Федоровна Вертембергская").
% ----------------------------------------------------------
% жена Александра I Павловича
hasband("Елизавета Алексеевна", "Александр I Павлович").
% дети Николая I и Александры Федоровны
hasband("Александра Федоровна Прусская", "Николай I Павлович").
mama("Александр II Николаевич", "Александра Федоровна Прусская").
% ----------------------------------------------------------
% дети Александра II и Мария Александровны
hasband("Мария Александровна", "Александр II Николаевич").
mama("Александр III Александрович", "Мария Александровна").
% ----------------------------------------------------------
% дети Александра III и Марии Федоровны
hasband("Мария Федоровна Датская", "Александр III Александрович").
mama("Николай II Александрович", "Мария Федоровна Датская").
hasband("Александра Федоровна Гессенская","Николай II Александрович").
