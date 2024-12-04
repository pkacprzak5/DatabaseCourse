-- Podaj liczbę̨ zamówień oraz wartość zamówień (uwzględnij opłatę za przesyłkę)
-- złożonych przez każdego klienta w lutym 1997. Jeśli klient nie złożył w tym okresie
-- żadnego zamówienia, to też powinien pojawić się na liście (liczba złożonych
-- zamówień oraz ich wartość jest w takim przypadku równa 0). Zbiór wynikowy
-- powinien zawierać: nazwę klienta, liczbę obsłużonych zamówień, oraz wartość
-- złożonych zamówień. (baza northwind)

with a (CompanyName, CustomerID, OrderCount, CostWithoutFreight) as (select C.CompanyName,
                                                                            C.CustomerID,
        count(O.OrderID)                                    as OrderCount,
        sum(OD.UnitPrice * OD.Quantity * (1 - OD.Discount)) as CostWithoutFreight
 from Customers C
          join dbo.Orders O on C.CustomerID = O.CustomerID and year(OrderDate) = 1997 and month(OrderDate) = 2
          join dbo.[Order Details] OD on O.OrderID = OD.OrderID
 group by C.CompanyName, C.CustomerID
 union
 select CompanyName, 0, 0, 0
 from Customers
 where CustomerID not in (select CustomerID
                          from Orders
                          where year(OrderDate) = 1997
                            and month(OrderDate) = 2))
select CompanyName, OrderCount,
       CostWithoutFreight + (
           select sum(Freight) from Orders
                               where year(OrderDate) = 1997 and month(OrderDate) = 2
                               and CustomerID = a.CustomerID
           ) as TotalPrice
from a