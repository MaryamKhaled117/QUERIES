SELECT TOP 10
    E.EmployeeID,E.FirstName,E.LastName,
    P.ProductID,P.ProductName,
    C.CategoryName,
    OD.Quantity As TotalBeveragesSold
FROM 
    (((Categories AS C
INNER JOIN 
    Products AS P ON P.CategoryID = C.CategoryID) 
INNER JOIN 
    OrderDetails AS OD ON P.ProductID = OD.ProductID)
INNER JOIN 
    Orders AS O ON O.OrderID = OD.OrderID)
INNER JOIN 
    Employees AS E ON E.EmployeeID = O.EmployeeID
WHERE 
    C.CategoryName = 'Beverages'
ORDER BY 
    OD.Quantity DESC;
