-- Wybierz nazwy i kraje wszystkich klientów mających siedziby we Francji lub w
-- Hiszpanii, wyniki posortuj według kraju, w ramach danego kraju nazwy firm posortuj
-- alfabetycznie
select CompanyName, Country from Customers
where Country = 'Spain' or Country = 'France'
order by Country, CompanyName