USE SchoolDB;

SELECT wording, (coef * 100 / (SELECT SUM(coef) FROM Matter)) AS coef_percentage FROM Matter;
SELECT SUM(coef) AS total_coef FROM Matter;
