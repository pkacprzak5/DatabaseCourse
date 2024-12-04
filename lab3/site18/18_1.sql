-- Napisz polecenie, które wyświetla listę dzieci będących członkami biblioteki (baza
-- library). Interesuje nas imię, nazwisko i data urodzenia dziecka

select firstname, lastname, juvenile.birth_date
from member
inner join juvenile on member.member_no = juvenile.member_no;