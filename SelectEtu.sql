USE SchoolDB;

SELECT * FROM Student;

SELECT * FROM Student ORDER BY name DESC;

SELECT name, firstname, city FROM Student WHERE city = 'Lyon';

SELECT name, firstname, city FROM Student WHERE city LIKE '%LL%';

SELECT firstname FROM Student WHERE name IN ('Dupont', 'Durand', 'Martin');