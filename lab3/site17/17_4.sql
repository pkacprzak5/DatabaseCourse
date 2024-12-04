-- Wybierz nazwy i numery telefonów dostawców, dostarczających produkty, których
-- aktualnie nie ma w magazynie.

select CompanyName, Phone
from Suppliers
left join Products on Suppliers.SupplierID = Products.SupplierID
where UnitsInStock is null or UnitsInStock = 0;