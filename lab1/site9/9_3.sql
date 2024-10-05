-- Wybierz nazwy i ceny produktów o cenie jednostkowej pomiędzy 20.00 a 30.00
select ProductName, UnitPrice from Products
where UnitPrice > 20.00 and UnitPrice < 30.00