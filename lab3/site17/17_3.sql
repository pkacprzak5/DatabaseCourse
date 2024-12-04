-- Czy są jacyś klienci którzy nie złożyli żadnego zamówienia w 1997 roku, jeśli tak to
-- pokaż ich dane adresowe

select Address, City, Country
from Customers
left outer join Orders
    on Customers.CustomerID = Orders.CustomerID
    and year(OrderDate) = 1997
where OrderID is null;