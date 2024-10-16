-- Podaj maksymalną cenę zamawianego produktu dla każdego zamówienia
select max(UnitPrice), OrderID from [Order Details]
group by OrderID;