-- Dla każdego zamówienia podaj jego wartość. Posortuj wynik wg wartości zamówień
-- (w malejęcej kolejności)

select sum(UnitPrice * Quantity - Discount), OrderID from [Order Details]
group by OrderID
order by sum(UnitPrice * Quantity - Discount) desc;

-- Zmodyfikuj zapytanie z poprzedniego punktu, tak aby zwracało tylko pierwszych 10
-- wierszy

select top 10 sum(UnitPrice * Quantity - Discount), OrderID from [Order Details]
group by OrderID
order by sum(UnitPrice * Quantity - Discount) desc;

-- Podaj nr zamówienia oraz wartość zamówienia, dla zamówień, dla których łączna
-- liczba zamawianych jednostek produktów jest większa niż 250

select sum(Quantity), OrderID from [Order Details]
group by OrderID
having sum(Quantity) > 250;

-- Podaj liczbę zamówionych jednostek produktów dla produktów, dla których
-- productid jest mniejszy niż 3

select sum(Quantity), ProductID from [Order Details]
group by ProductID
having ProductID < 3;