-- 3)Dla każdego dziecka zapisanego w bibliotece wyświetl jego imię i nazwisko, adres zamieszkania, imię i nazwisko rodzica (opiekuna) oraz liczbę wypożyczonych
-- książek w grudniu 2001 roku przez dziecko i opiekuna. *) Uwzględnij tylko te dzieci, dla których liczba wypożyczonych książek jest większa od 1

select ch.firstname, ch.lastname, a.street, a.city, a.state, a.zip, par.firstname as 'parent_firstname', par.lastname as 'parent_lastname',
       ((select count(*)
         from loanhist as lh
         where lh.member_no = ch.member_no and month(in_date) = 12 and year(in_date)=2001)
           +
        (select count(*)
         from loanhist as lh
         where lh.member_no = par.member_no and month(in_date) = 12 and year(in_date)=2001))
                                                                                  as liczba_ksiazek
from juvenile as j
         join member as ch
              on j.member_no = ch.member_no
         join adult as a
              on j.adult_member_no = a.member_no
         join member as par
              on j.adult_member_no = par.member_no
where ((select count(*)
        from loanhist as lh
        where lh.member_no = ch.member_no and month(in_date) = 12 and year(in_date)=2001)
    +
       (select count(*)
        from loanhist as lh
        where lh.member_no = par.member_no and month(in_date) = 12 and year(in_date)=2001))>1