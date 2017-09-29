/* for  the tenancies  that  have an overdue rent, find the address and 
apartment number of  the tenancy, the ssn, name and salary of  the lease
tenant, and the name of the landlord of  the leased apartment. */

SELECT p1.name AS TenantName, p1.salary, p1.SSN, p1.ApartmentNumber, h.HouseAddress, p2.name AS LandlordName 
FROM Persons p1, Persons p2, houses h, Tenants t, Landlords l, Ownerships o
WHERE t.RentOverdue = TRUE 
AND t.houseID = p1.houseID
AND t.HouseID = h.HouseID
AND t.LeaseTenantSSN = p1.SSN
AND t.HouseID = o.HouseID
AND o.LandlordID = l.LandlordID
AND p2.SSN = l.OwnerSSN
