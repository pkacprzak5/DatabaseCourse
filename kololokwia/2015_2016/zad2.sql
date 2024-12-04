--zadanie 2
-- 2)Czy są jacyś klienci, którzy nie złożyli żadnego zamówienia w 1997 roku? Jeśli tak, wyświetl ich dane adresowe.
-- Wykonaj za pomocą operatorów:
-- a)join b)in c)exist


-- a)
select Customers.CompanyName, Customers.Address, Customers.City, Customers.Region, Customers.PostalCode, Customers.Country from Customers
left join Orders on Customers.CustomerID = Orders.CustomerID and year(Orders.OrderDate) = 1997
group by Customers.CompanyName, Customers.CompanyName, Customers.Address, Customers.City, Customers.Region, Customers.PostalCode, Customers.Country
having count(Orders.OrderID) = 0;


--b)
select distinct companyname, address, postalcode, city, country
from customers
where customerid not in
      (select customerid from orders where year(orderdate)=1997);

--c)
select distinct companyname, address, postalcode, city, country
from customers as c
where not exists
          (select customerid
           from orders as o
           where c.customerid = o.customerid and year(orderdate)=1997)