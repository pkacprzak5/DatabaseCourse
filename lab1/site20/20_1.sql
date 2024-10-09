-- Napisz instrukcję select tak aby wybrać numer zlecenia, datę zamówienia, numer
-- klienta dla wszystkich niezrealizowanych jeszcze zleceń, dla których krajem odbiorcy
-- jest Argentyna
select OrderID, OrderDate, CustomerID from Orders
where ShippedDate is null and ShipCountry = 'Argentina'
