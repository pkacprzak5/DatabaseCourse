-- Podaj sumę/wartość zamówienia o numerze 10250

select sum(Quantity * UnitPrice * (1-Discount)) from [Order Details]
where OrderID = 10250;