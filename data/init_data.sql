-- Tabla de clientes
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    signup_date DATE
);

-- Tabla de órdenes
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(id),
    order_date DATE,
    total_amount DECIMAL(10,2)
);

-- Tabla de tiendas
CREATE TABLE store (
    id SERIAL PRIMARY KEY,
    store_name VARCHAR(50),
    location VARCHAR(100)
);

-- Tabla de órdenes
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(id),
    store_id INT REFERENCES store(id),
    order_date DATE,
    total_amount DECIMAL(10,2)
);

-- Insertar clientes
INSERT INTO customers (name, email, signup_date) VALUES
('Carlos', 'carlos@example.com', '2024-01-01'),
('María', 'maria@example.com', '2024-02-10'),
('Juan', 'juan@example.com', '2023-12-05'),
('Ana', 'ana@example.com', '2023-11-20'),
('Luis', 'luis@example.com', '2024-01-15'),
('Elena', 'elena@example.com', '2024-02-01'),
('Pedro', 'pedro@example.com', '2023-10-30'),
('Sofía', 'sofia@example.com', '2023-09-25'),
('José', 'jose@example.com', '2024-02-18'),
('Laura', 'laura@example.com', '2023-12-12'),
('Andrés', 'andres@example.com', '2023-11-10'),
('Carmen', 'carmen@example.com', '2024-01-05'),
('Hugo', 'hugo@example.com', '2023-10-15'),
('Valeria', 'valeria@example.com', '2024-02-07'),
('Manuel', 'manuel@example.com', '2023-12-28'),
('Clara', 'clara@example.com', '2023-11-22'),
('Diego', 'diego@example.com', '2023-09-30'),
('Lucía', 'lucia@example.com', '2024-01-25'),
('Fernando', 'fernando@example.com', '2023-12-08'),
('Paula', 'paula@example.com', '2024-02-15');

-- Insertar tiendas
INSERT INTO store (store_name, location) VALUES
('Tienda Centro', 'Lima'),
('Tienda Norte', 'Trujillo'),
('Tienda Sur', 'Arequipa'),
('Tienda Este', 'Cusco'),
('Tienda Oeste', 'Piura'),
('Tienda Express', 'Chiclayo'),
('Super Store', 'Tacna'),
('Mega Store', 'Iquitos'),
('Fast Shop', 'Pucallpa'),
('E-commerce', 'Online'),
('Quick Buy', 'Online'),
('Retail Hub', 'Huancayo'),
('Market Plaza', 'Cajamarca'),
('Tienda Premium', 'Lambayeque'),
('Zona Outlet', 'Callao'),
('Tienda Digital', 'Online'),
('Mini Store', 'Tumbes'),
('Express Market', 'Huaraz'),
('Tienda Elite', 'Moquegua'),
('Global Store', 'Online');

-- Insertar órdenes (20 registros con clientes y tiendas aleatorias)
INSERT INTO orders (customer_id, store_id, order_date, total_amount) VALUES
(1, 1, '2024-02-15', 100.50),
(2, 2, '2024-02-20', 200.75),
(3, 3, '2024-01-10', 50.00),
(4, 4, '2024-02-08', 180.20),
(5, 5, '2024-01-25', 95.40),
(6, 6, '2024-02-12', 300.00),
(7, 7, '2024-02-17', 120.50),
(8, 8, '2024-01-29', 230.10),
(9, 9, '2024-02-14', 75.80),
(10, 10, '2024-02-22', 50.30),
(11, 11, '2024-01-31', 210.90),
(12, 12, '2024-02-05', 130.40),
(13, 13, '2024-02-16', 90.00),
(14, 14, '2024-01-20', 260.70),
(15, 15, '2024-02-10', 170.20),
(16, 16, '2024-02-03', 110.60),
(17, 17, '2024-01-28', 85.30),
(18, 18, '2024-02-19', 140.50),
(19, 19, '2024-02-23', 310.40),
(20, 20, '2024-01-15', 55.90);


