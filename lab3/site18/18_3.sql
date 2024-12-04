-- Podaj informacje o karach zapłaconych za przetrzymywanie książki o tytule ‘Tao Teh
-- Kingʼ. Interesuje nas data oddania książki, ile dni była przetrzymywana i jaką
-- zapłacono karę

select in_date, datediff(day, due_date, in_date) as days_past, fine_paid
from loanhist
inner join title on loanhist.title_no = title.title_no
where title = 'Tao Teh King' and due_date < in_date;