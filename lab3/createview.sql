CREATE VIEW Home_Landlords(SSN,LandlordID,HouseID,ApartmentNumber) AS
SELECT p.SSN, l.LandlordID, o.HouseID, p.ApartmentNumber
FROM Landlords l, Persons p, Ownerships o 
WHERE l.OwnerSSN = p.SSN
AND p.HouseID = o.HouseID
AND l.LandlordID = o.LandlordID;
