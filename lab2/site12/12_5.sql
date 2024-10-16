-- Który ze spedytorów był najaktywniejszy w 1997 roku

select top 1 with ties ShipVia, count(OrderID) from Orders
group by ShipVia
order by count(OrderID) desc;