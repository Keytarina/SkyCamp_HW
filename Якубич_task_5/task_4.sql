SELECT AVG(p.Price*od.Quantity) as AverageCostOrder
FROM  (((Products p left join OrderDetails od on p.ProductID = od.ProductID) left join Orders o on od.OrderID = o.OrderID) left join Categories c on p.CategoryID = c.CategoryID)
WHERE c.CategoryName = 'Meat/Poultry'