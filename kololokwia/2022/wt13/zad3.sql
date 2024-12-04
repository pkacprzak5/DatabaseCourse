-- Podaj listę dzieci będących członkami biblioteki, które w dniu '2001-12-14'
-- zwróciły do biblioteki książkę o tytule 'Walking'. Zbiór wynikowy powinien zawierać
-- imię i nazwisko oraz dane adresowe dziecka. (baza library)

select m.firstname, m.lastname, a.street, a.city, a.state, m.member_no
from member m
join juvenile j on m.member_no = j.member_no
join adult a on j.adult_member_no = a.member_no
join loanhist l2 on j.member_no = l2.member_no
join dbo.title t on l2.title_no = t.title_no
where year(l2.in_date) = 2001 and month(l2.in_date) = 12 and day(l2.in_date) = 14 and t.title = 'Walking'