-- Wyszukaj informacje o stanowisku pracowników, których nazwiska zaczynają się na
-- literę B lub L
select Title from Employees
where LastName like '[B,L]%'
