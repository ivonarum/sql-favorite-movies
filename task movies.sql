-- Active: 1715943988603@@127.0.0.1@3306@sda_test
CREATE TABLE movies(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    Title VARCHAR(50),
Director VARCHAR(50),
Year INT,
Length_minutes int);

/*
Id	Title	Director	Year	Length_minutes
1	Toy Story	John Lasseter	1995	81
2	A Bug's Life	John Lasseter	1998	95
3	Toy Story 2	John Lasseter	1999	93
4	Monsters, Inc.	Pete Docter	2001	92
5	Finding Nemo	Andrew Stanton	2003	107
6	The Incredibles	Brad Bird	2004	116
7	Cars	John Lasseter	2006	117
8	Ratatouille	Brad Bird	2007	115
9	WALL-E	Andrew Stanton	2008	104
10	Up	Pete Docter	2009	101
11	Toy Story 3	Lee Unkrich	2010	103
12	Cars 2	John Lasseter	2011	120
13	Brave	Brenda Chapman	2012	102
14	Monsters University	Dan Scanlon	2013	110
*/
INSERT INTO movies (id,title, director, year, length_minutes) VALUES
(1, 'Toy Story',	'John Lasseter',	1995,	81),
(2, 'A Bugs Life', 'John Lasseter', 1998,	95),
(3,	'Toy Story 2',	'John Lasseter',	1999,	93),
(4,	'Monsters, Inc.',	'Pete Docter',	2001,	92),
(5,	'Finding Nemo',	'Andrew Stanton',	2003,	107),
(6,	'The Incredibles',	'Brad Bird',	2004,	116),
(7,	'Cars',	'John Lasseter',	2006,	117),
(8,	'Ratatouille',	'Brad Bird',	2007,	115),
(9,	'WALL-E',	'Andrew Stanton',	2008,	104),
(10,	'Up',	'Pete Docter',	2009,	101),
(11,	'Toy Story 3',	'Lee Unkrich',	2010,	103),
(12,	'Cars 2',	'John Lasseter',	2011,	120),
(13,	'Brave',	'Brenda Chapman',	2012,	102),
(14,	'Monsters University',	'Dan Scanlon',	2013,	110);

ALTER TABLE movies ADD COLUMN gatunek VARCHAR(20);
ALTER TABLE movies ADD COLUMN ocena int;
update movies
set gatunek = 'animacja' where id = 1;
update movies
set ocena = 4 where id = 1;
update movies
set gatunek = 'animacja', ocena = 4 
where id < 15;
update movies
set gatunek = 'fantasy', ocena = 3
where id < 7;
update movies
set gatunek = 'thriller', ocena = 5
where id > 11;

/*
Utwórz zapytanie SQL, aby wybrać wszystkie filmy w tabeli Movies, które zostały wydane po roku 2010.
*/
select title, year
from movies
where year > 2010;
/*
Użyj SQL, aby policzyć liczbę filmów w każdym gatunku w tabeli Movies, podkreślając różnorodność gatunków filmowych.
*/
SELECT COUNT(*) FROM movies
group by gatunek;
/*
Napisz zapytanie SQL, aby zidentyfikować film z najdłuższym czasem trwania w tabeli Movies.
*/
SELECT MAX(Length_minutes) from movies;
/*
Utwórz zapytanie SQL, aby obliczyć średnią ocenę IMDb dla wszystkich filmów w tabeli Movies, zapewniając wgląd w ogólną jakość filmu.
*/
select avg(ocena) from movies;