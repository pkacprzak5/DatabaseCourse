-- Wybierz nazwy produktów oraz inf. o stanie magazynu dla produktów dostarczanych
-- przez firmę ‘Tokyo Tradersʼ

select ProductName, UnitsInStock
from Products
inner join Suppliers on Products.SupplierID = Suppliers.SupplierID
where CompanyName = 'Tokyo Traders'