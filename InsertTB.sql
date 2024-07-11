USE SchoolDB;

INSERT INTO Matter (codemat, wording, coef) VALUES
('MATH101', 'Mathematics', 1.5),
('PHY101', 'Physics', 1.0),
('CHEM101', 'Chemistry', 1.2);

INSERT INTO Student (numstud, name, firstname, dateofbirth, street, postalcod, city) VALUES
(1, 'Dupont', 'Jean', '2000-05-14', '123 Elm St', 'LL001', 'Lille'),
(2, 'Durand', 'Paul', '2001-06-20', '456 Oak St', 'LL002', 'Lille'),
(3, 'Martin', 'Pierre', '2002-07-25', '789 Pine St', 'LL003', 'Lille'),
(4, 'Smith', 'John', '2000-08-30', '101 Maple St', '75001', 'Paris'),
(5, 'Brown', 'James', '2001-09-15', '202 Birch St', '69002', 'Lyon'),
(6, 'White', 'Emma', '2002-10-10', '303 Cedar St', '33000', 'Bordeaux'),
(7, 'Black', 'Olivia', '2000-11-05', '404 Ash St', '31000', 'Toulouse');

INSERT INTO Test (numtest, testdate, place, codemat) VALUES
(1, '2014-01-15', 'Room 101', 'MATH101'),
(2, '2014-02-20', 'Room 102', 'PHY101'),
(3, '2014-03-25', 'Room 103', 'CHEM101'),
(4, '2014-04-30', 'Room 104', 'MATH101'),
(5, '2014-05-10', 'Room 105', 'PHY101');

INSERT INTO Notation (numstud, numtest, score) VALUES
(1, 1, 12.0), (2, 1, 14.0), (3, 1, 8.0), (4, 1, 16.0), (5, 1, 20.0), 
(1, 2, 9.0), (2, 2, 10.0), (3, 2, 13.0), (6, 2, 20.0), 
(4, 3, 7.0), (5, 3, 11.0), (6, 3, 14.0), (7, 3, 9.0), 
(1, 4, 15.0), (2, 4, 13.0), (3, 4, 12.0), (4, 4, 10.0), (5, 4, 5.0), 
(6, 5, 18.0), (7, 5, 17.0), (1, 5, 6.0), (2, 5, 4.0);