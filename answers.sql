-- Question One
INSERT INTO OrderProducts VALUES (101, 'John Doe', 'Laptop');
INSERT INTO OrderProducts VALUES (101, 'John Doe', 'Mouse');
INSERT INTO OrderProducts VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO OrderProducts VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO OrderProducts VALUES (102, 'Jane Smith', 'Mouse');
INSERT INTO OrderProducts VALUES (103, 'Emily Clark', 'Phone');

-- Question 2
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Orders (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);
