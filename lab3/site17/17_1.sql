-- Wybierz nazwy i ceny produktów (baza northwind) o cenie jednostkowej pomiędzy
-- 20.00 a 30.00, dla każdego produktu podaj dane adresowe dostawcy

select ProductName, UnitPrice, Suppliers.Address
from Products
join Suppliers on Products.SupplierID = Suppliers.SupplierID
where UnitPrice between 20 and 30;
