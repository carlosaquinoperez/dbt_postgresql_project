-- Tabla de clientes
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    signup_date DATE
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


-- Agregar columna quantity a la tabla orders
ALTER TABLE orders ADD COLUMN quantity INT;

-- Crear la tabla products
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Modificar orders para agregar la relación con products
ALTER TABLE orders ADD COLUMN product_id INT REFERENCES products(id);

-- Insertar productos
INSERT INTO products (product_name, category, price) VALUES
('Laptop HP', 'Electrónica', 800.00),
('Smartphone Samsung', 'Electrónica', 500.00),
('Televisor LG 50"', 'Electrónica', 700.00),
('Audífonos Sony', 'Accesorios', 150.00),
('Teclado mecánico', 'Accesorios', 100.00),
('Cámara Canon', 'Fotografía', 1200.00),
('Reloj Inteligente', 'Electrónica', 250.00),
('Tablet Apple', 'Electrónica', 900.00),
('Impresora Epson', 'Oficina', 300.00),
('Mouse Logitech', 'Accesorios', 50.00),
('Monitor Dell 24"', 'Electrónica', 400.00),
('Disco Duro Externo', 'Almacenamiento', 150.00),
('Silla Gamer', 'Muebles', 350.00),
('Micrófono Profesional', 'Audio', 180.00),
('Bocinas Bluetooth', 'Audio', 220.00),
('Router WiFi', 'Redes', 130.00),
('Parlantes Sony', 'Audio', 300.00),
('Cargador Rápido', 'Accesorios', 40.00),
('Webcam HD', 'Accesorios', 90.00),
('Consola de Videojuegos', 'Gaming', 500.00);


-- Insertar órdenes con productos y cantidades
INSERT INTO orders (customer_id, store_id, product_id, quantity, order_date, total_amount) VALUES
(1, 1, 5, 1, '2024-02-15', 100.50),
(2, 2, 10, 2, '2024-02-20', 200.75),
(3, 3, 1, 1, '2024-01-10', 800.00),
(4, 4, 7, 1, '2024-02-08', 250.20),
(5, 5, 3, 1, '2024-01-25', 700.40),
(6, 6, 2, 1, '2024-02-12', 500.00),
(7, 7, 8, 2, '2024-02-17', 1800.00),
(8, 8, 6, 1, '2024-01-29', 1200.10),
(9, 9, 4, 3, '2024-02-14', 450.80),
(10, 10, 9, 1, '2024-02-22', 300.30),
(11, 11, 11, 1, '2024-01-31', 400.90),
(12, 12, 13, 2, '2024-02-05', 700.40),
(13, 13, 15, 1, '2024-02-16', 220.00),
(14, 14, 14, 1, '2024-01-20', 180.70),
(15, 15, 16, 2, '2024-02-10', 260.20),
(16, 16, 18, 3, '2024-02-03', 120.60),
(17, 17, 20, 1, '2024-01-28', 500.30),
(18, 18, 12, 1, '2024-02-19', 150.50),
(19, 19, 17, 2, '2024-02-23', 600.40),
(20, 20, 19, 1, '2024-01-15', 90.90);
