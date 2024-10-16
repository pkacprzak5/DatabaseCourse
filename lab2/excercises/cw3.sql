-- Dla każdego czytelnika podaj liczbę zarezerwowanych przez niego książek

select member_no, count(isbn) from reservation
group by member_no;

-- Dla każdego czytelnika podaj liczbę wypożyczonych przez niego książek

select member_no, count(isbn) from loanhist
group by member_no;

-- Dla każdego czytelnika podaj liczbę książek zwróconych przez niego w 2001r.

select member_no, count(isbn) from loanhist
where year(in_date) = 2001
group by member_no;

-- Dla każdego czytelnika podaj sumę kar jakie zapłacił w 2001r

select member_no, sum(fine_paid) from loanhist
where year(in_date) = 2001
group by member_no;

-- Ile książek wypożyczono w maju 2001

select count(isbn) from loanhist
where year(out_date) = 2001 and month(out_date) = 5;

-- Na jak długo średnio były wypożyczane książki w maju 2001
-- ??? nie było żadnych wypożyczeń w maju 2001
