-- Napisz polecenie które dla każdego dostawcy (supplier) pokaże pojedynczą kolumnę
-- zawierającą nr telefonu i nr faksu w formacie (numer telefonu i faksu mają być
-- oddzielone przecinkiem)
select CompanyName, Phone + ',' + Fax as PhoneAndFax from Suppliers