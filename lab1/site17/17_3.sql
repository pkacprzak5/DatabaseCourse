-- Wybierz zamówienia złożone w latach: 1997 do 1998
select OrderID, OrderDate from Orders
where OrderDate like '%1997%' or OrderDate like '%1998%'