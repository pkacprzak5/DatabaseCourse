-- Wybierz nazwy i ceny produktów z kategorii 'Meat/Poultry'
select Products.ProductName, Products.UnitPrice
from Products
join Categories on Categories.CategoryID = Products.CategoryID
where CategoryName = 'Meat/Poultry'