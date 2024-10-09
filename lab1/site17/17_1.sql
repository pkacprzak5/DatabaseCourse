-- Szukamy informacji o produktach o cenach mniejszych
-- niż 10 lub większych niż 20
select ProductName, UnitPrice from Products
where UnitPrice < 10 or UnitPrice > 20