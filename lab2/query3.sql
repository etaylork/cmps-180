SELECT DISTINCT h.Color, h.ApartmentCount
FROM  Persons p, houses h
Where p.Name = 'John Smith'
AND   p.HouseID = h.HouseID;
