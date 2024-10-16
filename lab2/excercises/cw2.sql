--  Ilu jest dorosłych czytekników

select count(member_no) from adult;

-- Ile jest dzieci zapisanych do biblioteki

select count(member_no) from juvenile;

-- Ilu z dorosłych czytelników mieszka w Kaliforni (CA)

select count(member_no), state from adult
group by state
having state = 'CA';

-- Dla każdego dorosłego czytelnika podaj liczbę jego dzieci.

select adult_member_no, count(member_no) from juvenile
group by adult_member_no;

-- Dla każdego dorosłego czytelnika podaj liczbę jego dzieci urodzonych przed 1998r

select adult_member_no, count(member_no) from juvenile
where year(birth_date) < 1998
group by adult_member_no;