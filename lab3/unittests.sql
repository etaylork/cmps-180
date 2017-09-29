/* for each of the 3 HouseID Foreign Key constraints specified in section 2.3 write one unit test */

INSERT INTO Persons
VALUES (79010, 'bob', 5000, 459, 234.32);

INSERT INTO Tenants
VALUES(54000, 14, 789235543 , '02/02/2010', '04/05/2019',500.00,'02/03/2015', TRUE );

INSERT INTO Ownerships
VALUES(5400,1700,'08/10/1972',10241.21);

/* First Constraint */
UPDATE Ownerships 
SET PropertyTax = 12
WHERE LandlordID = 100; 

UPDATE Ownerships 
SET PropertyTax = -12
WHERE LandlordID = 200;

/* Second Constraint */
UPDATE Tenants 
SET Rent = 4000.00
WHERE HouseID = 100;

UPDATE Tenants
SET Rent = 0
WHERE HouseID = 200;

/*Third Constraint*/
UPDATE Tenants 
SET LeaseExpirationDate = NULL
WHERE HouseID = 200;

UPDATE Tenants
SET LeaseExpirationDate = '02/01/2014'
WHERE HouseID = 100;

/*Fourth Constraint*/

UPDATE Tenants
SET LastRentPaidDate = CURRENT_DATE
WHERE HouseID = 600
AND RentOverdue = FALSE;

UPDATE Tenants
SET LastRentPaidDate = CURRENT_DATE
WHERE apartmentNumber = 2;
