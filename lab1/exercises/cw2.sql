-- Napisz polecenie, które wybiera numer tytułu i tytuł dla wszystkich książek, których
-- tytuły zawierających słowo 'adventure'
select title_no, title from title
where title like '%adventure%';

-- Napisz polecenie, które wybiera numer czytelnika, oraz zapłaconą karę dla wszystkich
-- książek, tore zostały zwrócone w listopadzie 2001
select member_no, fine_assessed from loanhist
where month(in_date) = 11 and year(in_date) = 2001;

-- Napisz polecenie, które wybiera wszystkie unikalne pary miast i stanów z tablicy
-- adult .
select distinct city, state from adult;

-- Napisz polecenie, które wybiera wszystkie tytuły z tablicy title i wyświetla je w
-- porządku alfabetycznym
select title from title
order by title;
