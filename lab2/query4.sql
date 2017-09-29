SELECT DISTINCT p.Name
FROM Persons p, Tenants t
WHERE t.Rent > (p.Salary/2)
AND p.SSN = t.LeaseTenantSSN;
