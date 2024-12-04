--zadanie 1
-- 1)Dla każdego klienta znajdź wartość wszystkich złożonych zamówień (weź pod uwagę koszt przesyłki)

select Customers.CompanyName,
                isnull(sum([Order Details].UnitPrice * [Order Details].Quantity * (1-[Order Details].Discount) + Orders.Freight), 0) as TotalValue
    from Customers
join Orders on Customers.CustomerID = Orders.CustomerID
join [Order Details] on Orders.OrderID = [Order Details].OrderID
group by Customers.CustomerID, Customers.CompanyName
