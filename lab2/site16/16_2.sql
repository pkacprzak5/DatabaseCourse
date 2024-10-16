-- Wyświetl klientów dla których w 1998 roku zrealizowano więcej niż 8 zamówień
-- (wyniki posortuj malejąco wg łącznej kwoty za dostarczenie zamówień dla każdego z
-- klientów)

select CustomerID, count(OrderID), sum(Freight) from (
    select CustomerID, OrderID, Freight from Orders
    where year(OrderDate) = 1998
                                                     ) as orders
group by CustomerID
having count(OrderID) > 8
order by sum(Freight) desc;