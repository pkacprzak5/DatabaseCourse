-- Dla każdego pracownika podaj liczbę obsługiwanych przez niego zamówień w 1997r

select EmployeeID, count(OrderID) from Orders
where year(OrderDate) = 1997
group by EmployeeID;

-- Dla każdego pracownika podaj ilu klientów (różnych klientów) obsługiwał ten
-- pracownik w 1997r
select EmployeeID, count(CustomerID) from Orders
where year(OrderDate) = 1997
group by EmployeeID;

-- Dla każdego spedytora/przewoźnika podaj łączną wartość "opłat za przesyłkę" dla
-- przewożonych przez niego zamówień

select ShipVia, sum(Freight) from Orders
group by ShipVia;

-- Dla każdego spedytora/przewoźnika podaj łączną wartość "opłat za przesyłkę"
-- przewożonych przez niego zamówień w latach od 1996 do 1997

select ShipVia, sum(Freight) from Orders
where year(OrderDate) >= 1996 and year(OrderDate) <= 1997
group by Orders.ShipVia;