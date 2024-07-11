USE SchoolDB;

SELECT COUNT(*) AS total_tests FROM Test;

SELECT Notation.score, Student.name, Student.firstname
FROM Notation
JOIN Student ON Notation.numstud = Student.numstud;

SELECT Notation.score, Student.name, Student.firstname, Matter.wording
FROM Notation
JOIN Student ON Notation.numstud = Student.numstud
JOIN Test ON Notation.numtest = Test.numtest
JOIN Matter ON Test.codemat = Matter.codemat;

SELECT Notation.score, Student.name, Student.firstname
FROM Notation
JOIN Student ON Notation.numstud = Student.numstud
WHERE Notation.score >= 10;

SELECT DISTINCT Student.name, Student.firstname
FROM Notation
JOIN Student ON Notation.numstud = Student.numstud
WHERE Notation.score = 20;

SELECT Student.name, Student.firstname, AVG(Notation.score) AS average_score
FROM Notation
JOIN Student ON Notation.numstud = Student.numstud
GROUP BY Student.name, Student.firstname;

SELECT * FROM Test
WHERE testdate BETWEEN '2014-01-01' AND '2014-06-30';

SELECT Test.numtest, Test.testdate, Test.place, Matter.wording
FROM Test
JOIN Matter ON Test.codemat = Matter.codemat;

SELECT Student.name, Student.firstname, AVG(Notation.score) AS average_score
FROM Notation
JOIN Student ON Notation.numstud = Student.numstud
GROUP BY Student.name, Student.firstname
ORDER BY average_score DESC;

SELECT Matter.wording, AVG(Notation.score) AS average_score
FROM Notation
JOIN Test ON Notation.numtest = Test.numtest
JOIN Matter ON Test.codemat = Matter.codemat
GROUP BY Matter.wording
HAVING COUNT(DISTINCT Test.numtest) > 1;

SELECT Notation.numtest, AVG(Notation.score) AS average_score
FROM Notation
GROUP BY Notation.numtest
HAVING COUNT(Notation.numstud) < 6;