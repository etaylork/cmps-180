ALTER TABLE Ownerships 
	ADD CONSTRAINT PropertyTax_Greater_Zero
	CHECK (PropertyTax >= 0);

ALTER TABLE Tenants  
	ADD CONSTRAINT Positive_rent
	CHECK ( RENT > 0);

ALTER TABLE Tenants 
	ADD CHECK(LeaseExpirationDate IS NULL 
		OR LeaseExpirationDate > LeaseStartDate);

ALTER TABLE Tenants 
	ADD CHECK(LastRentPaidDate <> CURRENT_DATE 
		OR RentOverdue = FALSE);

