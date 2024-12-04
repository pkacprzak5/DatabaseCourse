-- Dla każdego klienta podaj imię i nazwisko pracownika, który w 1997r obsłużył
-- najwięcej jego zamówień, podaj także liczbę tych zamówień (jeśli jest kilku takich
-- pracownikow to wystarczy podać imię nazwisko jednego nich). Za datę obsłużenia
-- zamówienia należy przyjąć orderdate. Zbiór wynikowy powinien zawierać nazwę
-- klienta, imię i nazwisko pracownika oraz liczbę obsłużonych zamówień. (baza
-- northwind)

WITH T1 (CustomerID, CompanyName, FirstName, LastName, OrdersCount) AS (
    SELECT Customers.CustomerID, Customers.CompanyName, Employees.FirstName,
           Employees.LastName, COUNT(Orders.OrderID) FROM Orders

               INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
               INNER JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
    WHERE YEAR(OrderDate) = 1997
    GROUP BY Customers.CustomerID, Customers.CompanyName, Employees.FirstName, Employees.LastName)

SELECT CompanyName, MAX(OrdersCount),
       (
           SELECT TOP 1 FirstName + ' ' + LastName FROM T1 AS T2 WHERE T1.CompanyName = T2.CompanyName
                                AND T2.OrdersCount = max(T1.OrdersCount)
       )
FROM T1
GROUP BY CustomerID, CompanyName
