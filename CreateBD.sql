CREATE DATABASE SchoolDB;

USE SchoolDB;

CREATE TABLE Matter (
    codemat CHAR(10) PRIMARY KEY,
    wording CHAR(100),
    coef FLOAT
);

CREATE TABLE Student (
    numstud INT PRIMARY KEY,
    name CHAR(50),
    firstname CHAR(50),
    dateofbirth DATE,
    street CHAR(100),
    postalcod CHAR(10),
    city CHAR(50)
);

CREATE TABLE Test (
    numtest INT PRIMARY KEY,
    testdate DATE,
    place CHAR(50),
    codemat CHAR(10),
    FOREIGN KEY (codemat) REFERENCES Matter(codemat)
);

CREATE TABLE Notation (
    numstud INT,
    numtest INT,
    score FLOAT,
    PRIMARY KEY (numstud, numtest),
    FOREIGN KEY (numstud) REFERENCES Student(numstud),
    FOREIGN KEY (numtest) REFERENCES Test(numtest)
);
