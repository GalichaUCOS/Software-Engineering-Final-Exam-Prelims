Table Customers {
  customer_id INT [primary key]
  name VARCHAR
  email VARCHAR
  phone VARCHAR
}

Table Consoles {
  console_id INT [primary key]
  console_name VARCHAR
  console_price DECIMAL
  supplier_id INT
}

Table Suppliers {
  supplier_id INT [primary key]
  supplier_name VARCHAR
  contact_email VARCHAR
}

Table Orders {
  order_id INT [primary key]
  customer_id INT
  console_id INT
  order_date DATE
  quantity INT
  total_price DECIMAL
}

Ref: Orders.customer_id > Customers.customer_id
Ref: Orders.console_id > Consoles.console_id
Ref: Consoles.supplier_id > Suppliers.supplier_id
