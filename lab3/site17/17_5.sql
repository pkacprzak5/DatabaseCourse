-- Wybierz zamówienia złożone w marcu 1997. Dla każdego takiego zamówienia
-- wyświetl jego numer, datę złożenia zamówienia oraz nazwę i numer telefonu klienta

select OrderID, OrderDate, Customers.CompanyName, Customers.Phone
from Orders
inner join Customers on Orders.CustomerID = Customers.CustomerID
where year(OrderDate) = 1997 and month(OrderDate) = 3;