-- Podaj listę dzieci będących członkami biblioteki, które w dniu '2001-12-14' nie
-- zwróciły do biblioteki książki o tytule 'Walking'. Zbiór wynikowy powinien zawierać
-- imię i nazwisko oraz dane adresowe dziecka. (baza library)


select firstname, lastname, city, zip, street
from juvenile j
    join dbo.member m on m.member_no = j.member_no
    join dbo.adult a on a.member_no = j.adult_member_no
where j.member_no not in
(
select j.member_no
from juvenile j
join dbo.member m on m.member_no = j.member_no
join dbo.adult a on a.member_no = j.adult_member_no
join dbo.loanhist l on j.member_no = l.member_no
join dbo.title t on l.title_no = t.title_no
where year(in_date) = 2001 and month(in_date) = 12 and day(in_date) = 14 and title = 'Walking'
)
