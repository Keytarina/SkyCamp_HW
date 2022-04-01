SELECT c.CustomerName, (p.Price*od.Quantity) as AmountOrder
FROM Customers c, Orders o, OrderDetails od, Products p
WHERE c.CustomerID=o.CustomerID AND o.OrderID=od.OrderID AND od.ProductID=p.ProductID
ORDER BY (p.Price*od.Quantity) DESC
LIMIT 3;