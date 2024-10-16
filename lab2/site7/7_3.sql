-- Podaj maksymalną i minimalną i średnią cenę produktu dla produktów o produktach
-- sprzedawanych w butelkach (‘bottleʼ)

select max(UnitPrice), min(UnitPrice), avg(UnitPrice) from Products
where QuantityPerUnit like '%bottle%';