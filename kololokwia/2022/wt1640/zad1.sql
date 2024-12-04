-- Podaj tytuły książek zarezerwowanych przez dorosłych członków biblioteki
-- mieszkających w Arizonie (AZ). Zbiór wynikowy powinien zawierać imię i nazwisko
-- członka biblioteki, jego adres oraz tytuł zarezerwowanej książki. Jeśli jakaś osoba
-- dorosła mieszkająca w Arizonie nie ma zarezerwowanej żadnej książki to też
-- powinna znaleźć się na liście, a w polu przeznaczonym na tytuł książki powinien
-- pojawić się napis BRAK. (baza library)

select title, firstname, lastname from member
join dbo.adult a on member.member_no = a.member_no
join dbo.reservation r2 on member.member_no = r2.member_no
join dbo.item i on r2.isbn = i.isbn
join dbo.title t on t.title_no = i.title_no
where state = 'AZ'
union select 'BRAK', firstname, lastname from adult a2
join dbo.member m on m.member_no = a2.member_no
where a2.member_no not in (
    select reservation.member_no from reservation
                     join dbo.adult a3 on reservation.member_no = a3.member_no
                        where a3.state = 'AZ'
    ) and state = 'AZ'
