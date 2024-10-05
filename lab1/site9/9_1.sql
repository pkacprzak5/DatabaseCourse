-- Wybierz nazwy i adresy wszystkich klientów mających siedziby w Londynie
select CompanyName, Address from Customers
where City = 'London'