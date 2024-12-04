-- Napisz polecenie, które podaje tytuły aktualnie wypożyczonych książek

select title
from title
left join loan on title.title_no = loan.title_no
and out_date is null;