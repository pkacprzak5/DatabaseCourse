-- Posortuj zamówienia wg maksymalnej ceny produktu
select max(UnitPrice), OrderID from [Order Details]
group by OrderID
order by max(UnitPrice);