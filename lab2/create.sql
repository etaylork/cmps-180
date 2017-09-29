DROP SCHEMA lab2 CASCADE;
CREATE SCHEMA lab2;

CREATE TABLE Persons(
SSN INT,
NAME CHAR(30),
HouseId INT, 
ApartmentNumber INT,
Salary DECIMAL(7,2),
PRIMARY KEY(SSN)
);

CREATE TABLE Houses (
HouseID INT,
HouseAddress VARCHAR(40),
ApartmentCount INT,
Color VARCHAR(40),
PRIMARY KEY(HouseID),
UNIQUE(HouseAddress)
);

CREATE TABLE Landlords (
LandlordID INT,
OwnerSSN INT NOT NULL,
LandlordAddress VARCHAR(40),
PRIMARY KEY(LandlordID),
UNIQUE(OwnerSSN)
);

CREATE TABLE Ownerships (
LandlordID INT, 
HouseID INT,
PurchaseDate DATE,
PropertyTax DECIMAL(7,2),
PRIMARY KEY(LandlordID,HouseID)
);

CREATE TABLE Tenants(
HouseID INT,
ApartmentNumber INT,
LeaseTenantSSN INT NOT NULL,
LeaseStartDate DATE NOT  NULL,
LeaseExpirationDate DATE,
Rent DECIMAL(7,2),
LastRentPaidDate DATE,
RentOverdue BOOLEAN,
PRIMARY KEY(HouseID,ApartmentNumber),
UNIQUE(HouseId, LeaseTenantSSN)
);
