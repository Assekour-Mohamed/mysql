 


 
1,
INSERT INTO Avion (ID_A, Nom, Capacite, local)
VALUES (100, 'AIRBUS', 300, 'RABAT'),
       (101, 'B737', 250, 'CASA'),
       (102, 'B737', 220, 'RABAT');


2,
SELECT * FROM Avion ORDER BY Nom;
 
3,
SELECT Nom, Capacite FROM Avion;

4,
SELECT DISTINCT local FROM Avion;

5,
SELECT * FROM Avion WHERE local IN ('RABAT', 'CASA');
 
6,
UPDATE Avion SET Capacite = 220 WHERE ID_A = 101;
 
7,
DELETE FROM Avion WHERE Capacite < 200;
 
8,
SELECT MAX(Capacite) AS Capacite_Max, MIN(Capacite) AS Capacite_Min, AVG(Capacite) AS Capacite_Moyenne FROM Avion;
 
9,
SELECT * FROM Avion WHERE Capacite = (SELECT MIN(Capacite) FROM Avion);
 
10,
SELECT * FROM Avion WHERE Capacite > (SELECT AVG(Capacite) FROM Avion);
 
11,
SELECT Pilote.Nom, Pilote.Adresse
FROM Pilote
INNER JOIN Vol ON Pilote.ID_p = Vol.ID_p
WHERE Vol.ID_V IN ('IT100', 'IT104');
 
12,
SELECT ID_p FROM Pilote;
 
13,
SELECT ID_p FROM Pilote WHERE ID_p NOT IN (SELECT DISTINCT ID_p FROM Vol);
 
14,
SELECT Pilote.Nom
FROM Pilote
INNER JOIN Vol ON Pilote.ID_p = Vol.ID_p
INNER JOIN Avion ON Vol.ID_A = Avion.ID_A
WHERE Avion.Nom = 'AIRBUS';

