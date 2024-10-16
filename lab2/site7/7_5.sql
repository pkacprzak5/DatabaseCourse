-- Podaj sumę/wartość zamówienia o numerze 10250

select sum(Quantity * UnitPrice) from [Order Details]
where OrderID = 10250;