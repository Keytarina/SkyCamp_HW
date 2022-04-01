SELECT c.CustomerID, c.CustomerName, COUNT(*) as NumberOrders
FROM Customers c inner join Orders o on c.CustomerID=o.CustomerID  
GROUP BY c.CustomerID
ORDER BY COUNT(*) DESC
LIMIT 3;