-- Wybierz zamówienia złożone w 1997 roku
select OrderID, OrderDate from Orders
where OrderDate like '%1997%'