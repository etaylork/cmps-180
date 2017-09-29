SELECT p.name, t.rent
FROM Home_Landlords h, Persons p, Tenants t 
WHERE h.SSN = p.SSN
AND h.SSN = t.LeaseTenantSSN
AND RentOverdue = TRUE;

/* Output of just the top query
Name:	     	  rent:
Robert Johnson	  1802.40
Alex Jones 	  2201.10
Juan Rodriguez	  3104.10
Juan Rodriguez	  2310.10

*/

DELETE FROM Tenants
WHERE HouseID = 1000
AND ApartmentNumber = 2;

DELETE FROM Tenants
WHERE HouseID = 1100
AND ApartmentNumber = 2;

/* output with deletion statements added:

name:	       		rent:
Robert Johnson		1802.40
Jaun Rodriguez		3104.10
*/
