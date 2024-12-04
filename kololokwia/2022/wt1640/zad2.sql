-- Pokaż nazwy produktów, kategorii 'Beverages' które nie były kupowane w okresie
-- od '1997.02.20' do '1997.02.25' Dla każdego takiego produktu podaj jego nazwę,
-- nazwę dostawcy (supplier), oraz nazwę kategorii. Zbiór wynikowy powinien
-- zawierać nazwę produktu, nazwę dostawcy oraz nazwę kategorii. (baza northwind)

select p.ProductName, s.CompanyName, c.CategoryName
from Products p
join dbo.Categories c on c.CategoryID = p.CategoryID
join dbo.Suppliers s on s.SupplierID = p.SupplierID
where p.ProductID not in (
    select ProductID from [Order Details]
                     join dbo.Orders O on O.OrderID = [Order Details].OrderID
                     where year(OrderDate) = 1997 and month(OrderDate) = 2 and day(OrderDate) >= 20 and day(OrderDate) <= 25
    ) and CategoryName = 'Beverages'