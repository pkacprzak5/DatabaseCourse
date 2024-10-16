-- Podaj maksymalną cenę produktu dla produktów o cenach poniżej 20

select max(UnitPrice) from Products
where UnitPrice < 20;
