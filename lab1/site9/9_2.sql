-- Wybierz nazwy i adresy wszystkich klientów mających siedziby we Francji lub w Hiszpanii
select CompanyName, Address from Customers
where Country = 'France' OR Country = 'Spain'