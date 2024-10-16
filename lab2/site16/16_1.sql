-- Wyświetl zamówienia dla których liczba pozycji zamówienia jest większa niż 5

select OrderID, count(ProductID) from [Order Details]
group by OrderID
having count(ProductID) > 5;