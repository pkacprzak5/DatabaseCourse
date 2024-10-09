-- Napisz polecenie, które oblicza wartość każdej pozycji zamówienia o numerze 10250
select [Order Details].ProductID, UnitPrice * [Order Details].Quantity as CombinedPrice
from [Order Details]
where OrderID = 10250