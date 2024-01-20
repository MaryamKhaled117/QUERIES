SELECT 
    E.EmployeeID,E.FirstName,E.LastName,
    COUNT(O.OrderID) AS TotalOrdersSold
FROM
    Orders AS O
INNER JOIN 
    Employees AS E ON O.EmployeeID = E.EmployeeID
WHERE
    E.EmployeeID = 10  ---- try from 1 to 9 there will be a record except for 10 as this employee hasn't any orders sold
GROUP BY 
    E.EmployeeID, E.FirstName, E.LastName
ORDER BY 
    COUNT(O.OrderID) DESC;
