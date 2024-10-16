-- Dla każdego pracownika podaj liczbę obsługiwanych przez niego zamówień z
-- podziałem na lata

select EmployeeID, count(OrderID), year(OrderDate) from Orders
group by EmployeeID, year(OrderDate)
order by EmployeeID;

-- Dla każdego pracownika podaj liczbę obsługiwanych przez niego zamówień z
-- podziałem na lata i miesiące.

select EmployeeID, count(OrderID), year(OrderDate), month(OrderDate) from Orders
group by EmployeeID, year(OrderDate), month(OrderDate)
order by EmployeeID;