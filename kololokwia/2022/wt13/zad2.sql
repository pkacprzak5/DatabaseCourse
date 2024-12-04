-- Podaj liczbę̨ zamówień oraz wartość zamówień (uwzględnij opłatę za przesyłkę)
-- obsłużonych przez każdego pracownika w lutym 1997. Za datę obsłużenia
-- zamówienia należy uznać datę jego złożenia (orderdate). Jeśli pracownik nie
-- obsłużył w tym okresie żadnego zamówienia, to też powinien pojawić się na liście
-- (liczba obsłużonych zamówień oraz ich wartość jest w takim przypadku równa 0).
-- Zbiór wynikowy powinien zawierać: imię i nazwisko pracownika, liczbę obsłużonych
-- zamówień, wartość obsłużonych zamówień. (baza northwind)

select E.FirstName, E.LastName, isnull(count(O.OrderID), 0) as ordercount,
       isnull(sum(OD.UnitPrice*OD.Quantity * (1-OD.Discount)), 0) as SumCost
from Employees E join dbo.Orders O on E.EmployeeID = O.EmployeeID
                                          and year(O.OrderDate) = 1997 and month(O.OrderDate) = 2
join dbo.[Order Details] OD on O.OrderID = OD.OrderID
group by E.FirstName, E.LastName, E.EmployeeID
union select E.FirstName, E.LastName, 0, 0
    from Employees E
    where E.EmployeeID not in (
            select EmployeeID from Orders
                              where year(OrderDate) = 1997 and month(OrderDate) = 2
        )

