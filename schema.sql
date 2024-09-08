-- Create tables
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

CREATE TABLE Consoles (
    console_id INT PRIMARY KEY,
    console_name VARCHAR(100),
    console_price DECIMAL(10, 2),  -- Prices are in PHP
    supplier_id INT,
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100),
    contact_email VARCHAR(100)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    console_id INT,
    order_date DATE,
    quantity INT,
    total_price DECIMAL(10, 2),  -- Total price in PHP
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (console_id) REFERENCES Consoles(console_id)
);

-- Insert into Suppliers
INSERT INTO Suppliers (supplier_id, supplier_name, contact_email) VALUES
(1, 'Sony Electronics', 'contact@sony.com'),
(2, 'Microsoft Gaming', 'support@microsoft.com'),
(3, 'Nintendo Co.', 'info@nintendo.com'),
(4, 'Valve Corporation', 'support@valve.com');

-- Insert into Customers
INSERT INTO Customers (customer_id, name, email, phone) VALUES
(1, 'Tai Kamiya', 'tai.kamiya@example.com', '555-1234'),
(2, 'Matt Ishida', 'matt.ishida@example.com', '555-5678'),
(3, 'Sora Takenouchi', 'sora.takenouchi@example.com', '555-4321'),
(4, 'Izzy Izumi', 'izzy.izumi@example.com', '555-8765'),
(5, 'Mimi Tachikawa', 'mimi.tachikawa@example.com', '555-1357');

-- Insert into Consoles with prices in PHP
INSERT INTO Consoles (console_id, console_name, console_price, supplier_id) VALUES
(1, 'PlayStation 5', 27999.44, 1),  -- 499.99 USD * 56 PHP
(2, 'Xbox Series X', 27999.44, 2),  -- 499.99 USD * 56 PHP
(3, 'Nintendo Switch', 16799.44, 3), -- 299.99 USD * 56 PHP
(4, 'Steam Deck', 22399.44, 4),      -- 399.99 USD * 56 PHP
(5, 'PlayStation 4', 16799.44, 1);  -- 299.99 USD * 56 PHP

-- Insert into Orders with total price in PHP
INSERT INTO Orders (order_id, customer_id, console_id, order_date, quantity, total_price) VALUES
(1, 1, 1, '2024-09-08', 1, 27999.44),  -- 499.99 USD * 56 PHP
(2, 2, 3, '2024-09-07', 2, 33598.88),  -- 599.98 USD * 56 PHP
(3, 3, 4, '2024-09-06', 1, 22399.44),  -- 399.99 USD * 56 PHP
(4, 4, 2, '2024-09-05', 1, 27999.44),  -- 499.99 USD * 56 PHP
(5, 5, 5, '2024-09-04', 1, 16799.44);  -- 299.99 USD * 56 PHP
