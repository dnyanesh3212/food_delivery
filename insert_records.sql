USE food_delivery;
-- Insert Users
INSERT INTO Users (UserName, Email, PhoneNumber, Address) VALUES
('Alice Johnson', 'alice@example.com', '2345678901', '789 Maple St'),
('Bob Brown', 'bob@example.com', '3456789012', '101 Pine St'),
('Charlie Davis', 'charlie@example.com', '4567890123', '202 Birch St'),
('Diana Evans', 'diana@example.com', '5678901234', '303 Cedar St'),
('Eve Foster', 'eve@example.com', '6789012345', '404 Spruce St'),
('Frank Green', 'frank@example.com', '7890123456', '505 Oak St'),
('Grace Harris', 'grace@example.com', '8901234567', '606 Willow St'),
('Henry Irvine', 'henry@example.com', '9012345678', '707 Ash St'),
('Ivy Jackson', 'ivy@example.com', '0123456789', '808 Elm St');

-- Insert Restaurants
INSERT INTO Restaurants (RestaurantName, Address, PhoneNumber) VALUES
('Sushi House', '123 Sushi St', '7778889999'),
('Taco Town', '456 Taco Ave', '6667778888'),
('Pasta Palace', '789 Pasta Blvd', '5556667777'),
('Burger Bistro', '101 Burger Ln', '1113335555'),
('Curry Corner', '202 Curry Rd', '2224446666'),
('BBQ Barn', '303 BBQ Blvd', '3335557777'),
('Noodle Nook', '404 Noodle St', '4446668888'),
('Salad Stop', '505 Salad Ave', '5557779999');


-- Insert Dishes
INSERT INTO Dishes (RestaurantID, DishName, Price) VALUES
(1, 'BBQ Chicken Pizza', 13.99),
(1, 'Hawaiian Pizza', 11.99),
(2, 'Double Cheeseburger', 10.99),
(2, 'Grilled Chicken Burger', 9.99),
(3, 'California Roll', 11.99),
(3, 'Spicy Tuna Roll', 13.99),
(3, 'Avocado Roll', 9.99),
(3, 'Salmon Sashimi', 14.99),
(4, 'Beef Taco', 4.99),
(4, 'Chicken Taco', 5.99),
(4, 'Fish Taco', 6.99),
(4, 'Veggie Taco', 4.49),
(5, 'Spaghetti Carbonara', 14.99),
(5, 'Penne Arrabbiata', 13.99),
(5, 'Lasagna', 15.99),
(5, 'Fettuccine Alfredo', 12.99),
(6, 'Classic BBQ Ribs', 19.99),
(6, 'BBQ Chicken Wings', 12.99),
(6, 'Pulled Pork Sandwich', 10.99),
(6, 'BBQ Brisket', 18.99),
(7, 'Chicken Noodle Soup', 7.99),
(7, 'Beef Noodle Soup', 8.99),
(7, 'Vegetable Noodle Soup', 6.99),
(7, 'Shrimp Pad Thai', 12.99),
(8, 'Caesar Salad', 8.99),
(8, 'Greek Salad', 9.99),
(8, 'Cobb Salad', 10.99),
(8, 'Garden Salad', 7.99);

-- Insert Orders
INSERT INTO Orders (UserID, Status, TotalAmount) VALUES
(3, 'Pending', 30.98),
(4, 'Completed', 19.98),
(1, 'Completed', 25.98),
(2, 'Pending', 42.50),
(5, 'Completed', 12.75),
(6, 'Pending', 33.20),
(4, 'Completed', 28.40),
(3, 'Pending', 15.60),
(7, 'Completed', 45.00),
(8, 'Pending', 22.30);

-- Insert OrderItems
INSERT INTO OrderItems (OrderID, DishID, Quantity, Price) VALUES
(3, 5, 2, 27.98),
(3, 6, 1, 13.99),
(4, 7, 2, 9.98),
(4, 8, 1, 5.99),
(5, 9, 1, 14.99),
(5, 10, 1, 13.99),
(6, 11, 3, 14.97),
(6, 12, 2, 13.98),
(7, 13, 1, 15.99),
(7, 14, 2, 25.98),
(8, 15, 1, 19.99),
(8, 16, 2, 25.98),
(9, 17, 1, 12.99),
(9, 18, 1, 10.99),
(10, 19, 2, 15.98),
(10, 20, 1, 7.99);

-- Insert Reviews
INSERT INTO Reviews (UserID, RestaurantID, Rating, Comment) VALUES
(3, 3, 5, 'Best sushi I have ever had!'),
(4, 4, 3, 'Tacos were okay, not the best.'),
(5, 5, 4, 'Great pasta dishes!'),
(1, 2, 4, 'Loved the cheeseburger!'),
(2, 1, 5, 'Amazing pizza, will order again!'),
(3, 4, 2, 'Not a fan of the tacos.'),
(4, 3, 5, 'Sushi rolls were fresh and delicious.'),
(5, 1, 4, 'Good pizza, but a bit too greasy.'),
(6, 5, 3, 'Pasta was average, expected better.'),
(7, 2, 4, 'Burgers were tasty and well-cooked.'),
(8, 4, 5, 'Best tacos in town!'),
(1, 3, 5, 'Loved the sushi, highly recommend!'),
(2, 5, 4, 'Enjoyed the pasta, will visit again.'),
(3, 2, 3, 'Burgers were okay, nothing special.'),
(4, 1, 5, 'Pizza was fantastic, great crust.');

-- Insert Payments
INSERT INTO Payments (OrderID, Amount, PaymentMethod, Status) VALUES
(3, 30.98, 'Credit Card', 'Completed'),
(4, 19.98, 'Debit Card', 'Completed'),
(5, 25.98, 'Credit Card', 'Pending'),
(6, 42.50, 'PayPal', 'Completed'),
(7, 12.75, 'Credit Card', 'Completed'),
(8, 33.20, 'Debit Card', 'Pending'),
(9, 28.40, 'Credit Card', 'Completed'),
(10, 15.60, 'PayPal', 'Completed'),
(11, 45.00, 'Credit Card', 'Completed'),
(12, 22.30, 'Debit Card', 'Pending');