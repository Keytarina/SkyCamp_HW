SELECT c.CustomerName, MAX(p.Price*od.Quantity) as MaxAmountOrder
FROM Customers c, Orders o, OrderDetails od, Products p
WHERE c.CustomerID=o.CustomerID AND o.OrderID=od.OrderID AND od.ProductID=p.ProductID;