
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Consoles;
DROP TABLE IF EXISTS Suppliers;
DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

CREATE TABLE Consoles (
    console_id INT PRIMARY KEY,
    console_name VARCHAR(100),
    console_price DECIMAL(10, 2),
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
    total_price DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (console_id) REFERENCES Consoles(console_id)
);

INSERT INTO Suppliers (supplier_id, supplier_name, contact_email) VALUES
(1, 'Sony Electronics', 'contact@sony.com'),
(2, 'Microsoft Gaming', 'support@microsoft.com'),
(3, 'Nintendo Co.', 'info@nintendo.com'),
(4, 'Valve Corporation', 'support@valve.com');

INSERT INTO Customers (customer_id, name, email, phone) VALUES
(1, 'Tai Kamiya', 'tai.kamiya@example.com', '555-1234'),
(2, 'Matt Ishida', 'matt.ishida@example.com', '555-5678'),
(3, 'Sora Takenouchi', 'sora.takenouchi@example.com', '555-4321'),
(4, 'Izzy Izumi', 'izzy.izumi@example.com', '555-8765'),
(5, 'Mimi Tachikawa', 'mimi.tachikawa@example.com', '555-1357');

INSERT INTO Consoles (console_id, console_name, console_price, supplier_id) VALUES
(1, 'PlayStation 5', 499.99, 1),
(2, 'Xbox Series X', 499.99, 2),
(3, 'Nintendo Switch', 299.99, 3),
(4, 'Steam Deck', 399.99, 4),
(5, 'PlayStation 4', 299.99, 1);

INSERT INTO Orders (order_id, customer_id, console_id, order_date, quantity, total_price) VALUES
(1, 1, 1, '2024-09-08', 1, 499.99),
(2, 2, 3, '2024-09-07', 2, 599.98),
(3, 3, 4, '2024-09-06', 1, 399.99),
(4, 4, 2, '2024-09-05', 1, 499.99),
(5, 5, 5, '2024-09-04', 1, 299.99);
