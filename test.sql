-- Test: Get all users
SELECT * FROM Users;

-- Test: Get all restaurants
SELECT * FROM Restaurants;

-- Test: Get all dishes from a specific restaurant
SELECT * FROM Dishes WHERE RestaurantID = 1;

-- Test: Get all orders for a specific user
SELECT * FROM Orders WHERE UserID = 1;

-- Test: Get all order items for a specific order
SELECT * FROM OrderItems WHERE OrderID = 1;

-- Test: Get all reviews for a specific restaurant
SELECT * FROM Reviews WHERE RestaurantID = 1;

-- Test: Get all payments for a specific order
SELECT * FROM Payments WHERE OrderID = 1;

SELECT 
    o.OrderID AS order_id, 
    u.UserName AS customer, 
    r.RestaurantName AS restaurant, 
    SUM(oi.Price * oi.Quantity) AS total_price, 
    o.OrderDate AS order_time
FROM Orders o
JOIN Users u ON o.UserID = u.UserID
JOIN OrderItems oi ON o.OrderID = oi.OrderID
JOIN Dishes d ON oi.DishID = d.DishID
JOIN Restaurants r ON d.RestaurantID = r.RestaurantID
GROUP BY o.OrderID, u.UserName, r.RestaurantName, o.OrderDate;

SELECT 
    oi.OrderItemID, 
    d.DishName AS menu_item, 
    oi.Quantity, 
    oi.Price
FROM OrderItems oi
JOIN Dishes d ON oi.DishID = d.DishID
WHERE oi.OrderID = 1;
SELECT * FROM Payments WHERE Status = 'Completed';

