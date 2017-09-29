UPDATE Tenants t 
Set LastRentPaidDate = n.DatePaid, RentOverdue = FALSE
FROM NewRentPayments n 
WHERE t.Rent = n.Rent
AND t.LeaseTenantSSN = n.LeaseTenantSSN
AND t.HouseID = n.HouseID
AND t.ApartmentNumber = n.ApartmentNumber;

/*------------------------------------------------------------*/

INSERT INTO Tenants(HouseID, ApartmentNumber, LeaseTenantSSN, LeaseStartDate, LeaseExpirationDate, Rent, LastRentPaidDate, RentOverdue)
(Select HouseID, ApartmentNumber, LeaseTenantSSN, CURRENT_DATE, NULL, Rent, DatePaid, FALSE
 FROM NewRentPayments n
 WHERE NOT EXISTS (SELECT *
	 	  FROM Tenants t
	 	  WHERE t.HouseID = n.HouseID
	 	  AND t.ApartmentNumber = n.ApartmentNumber));
