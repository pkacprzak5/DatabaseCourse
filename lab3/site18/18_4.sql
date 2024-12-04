-- Napisz polecenie które podaje listę książek (mumery ISBN) zarezerwowanych przez
-- osobę o nazwisku: Stephen A. Graff

select isbn
from reservation
join member on reservation.member_no = member.member_no
where lastname = 'Graff' and firstname = 'Stephen' and middleinitial = 'A';