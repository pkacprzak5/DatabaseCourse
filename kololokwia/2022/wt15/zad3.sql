-- Dla każdego klienta podaj imię i nazwisko pracownika, który w 1997r obsłużył
-- najwięcej jego zamówień, podaj także liczbę tych zamówień (jeśli jest kilku takich
-- pracownikow to wystarczy podać imię nazwisko jednego nich). Zbiór wynikowy
-- powinien zawierać nazwę klienta, imię i nazwisko pracownika oraz liczbę
-- obsłużonych zamówień. (baza northwind)

with a (CompanyName, CustomerID, FirstName, LastName, NumberOfOrders) as (
    select C.CompanyName, C.CustomerID, E.FirstName, E.LastName, count(O.OrderID) as NumberOfOrders
    from Customers C
    join dbo.Orders O on C.CustomerID = O.CustomerID and year(O.OrderDate) = 1997
    join dbo.Employees E on E.EmployeeID = O.EmployeeID
    group by C.CompanyName, C.CustomerID, E.FirstName, E.LastName

)
select CompanyName, max(NumberOfOrders),
       (
           select top 1 FirstName + ' ' + LastName from a as b
                                            where b.CompanyName = a.CompanyName and
                                                  b.NumberOfOrders = max(a.NumberOfOrders)
                                            )
from a
group by CompanyName, a.CustomerID