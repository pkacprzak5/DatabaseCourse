-- Szukamy informacji o produktach sprzedawanych w butelkach (‘bottleʼ)
select * from Products
where QuantityPerUnit LIKE '%bottle%'