-- . Podaj liczbę zamówień dostarczanych przez poszczególnych spedytorów
-- (przewoźników)

select count(OrderID), ShipVia from Orders
group by ShipVia;