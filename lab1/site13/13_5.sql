-- Znajdź klientów, którzy w swojej nazwie mają w którymś miejscu
-- słowo 'Store'
select CompanyName from Customers
where CompanyName like '%Store%'