-- Wyszukaj informacje o stanowisku pracowników, których nazwiska zaczynają się na
-- literę z zakresu od B do L
select Title from Employees
where LastName LIKE '[B-L]%'