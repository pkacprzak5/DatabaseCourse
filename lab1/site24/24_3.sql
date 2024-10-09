-- . Wybierz zamówienia złożone w 1997 r. Wynik po sortuj malejąco wg numeru
-- miesiąca, a w ramach danego miesiąca rosnąco według ceny za przesyłkę
select * from Orders
where YEAR(OrderDate) = 1997
order by MONTH(OrderDate) desc, Freight asc