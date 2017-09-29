SELECT DISTINCT p.Name
FROM Persons p, Houses h
WHERE p.HouseId = h.HouseId AND h.HouseAddress = '1730 Alma Street';
