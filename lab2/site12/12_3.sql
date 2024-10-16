-- Podaj maksymalną i minimalną cenę zamawianego produktu dla każdego zamówienia

select max(UnitPrice), min(UnitPrice), OrderID from [Order Details]
group by OrderID;