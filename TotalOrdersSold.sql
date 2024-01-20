SELECT TOP 10
    E.EmployeeID,E.FirstName,E.LastName,
    COUNT(O.OrderID) AS TotalOrdersSold
FROM
    Orders AS O
INNER JOIN 
    Employees AS E ON O.EmployeeID = E.EmployeeID
GROUP BY 
    E.EmployeeID, E.FirstName, E.LastName
ORDER BY 
    COUNT(O.OrderID) DESC;
