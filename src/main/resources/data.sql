INSERT INTO categoria (Nombre, Descripcion, Estado) VALUES
('Tacos', 'Variedad de tacos mexicanos con diferentes tipos de carne y guarniciones.', 'Activo'),
('Bebidas', 'Bebidas típicas mexicanas como aguas frescas, cervezas y cócteles.', 'Activo'),
('Botanas', 'Botanas mexicanas como nachos, quesadillas y otros aperitivos.', 'Activo'),
('Salsas', 'Salsas mexicanas caseras de diferentes niveles de picante.', 'Activo'),
('Postres', 'Postres tradicionales mexicanos como flan, churros y tres leches.', 'Activo');

INSERT INTO producto (Nombre, Descripcion, Precio, Estado, Categoria_Id) VALUES
('Taco al Pastor', 'Taco de carne al pastor con piña, cebolla y cilantro, servido con salsa roja o verde.', 50.00, 'Disponible', 1),
('Taco de Asada', 'Taco de carne asada con cebolla, cilantro, y salsa de aguacate.', 55.00, 'Disponible', 1),
('Quesadilla de Pollo', 'Quesadilla con pollo desmenuzado, queso y salsa mexicana, acompañada de crema y guacamole.', 45.00, 'Disponible', 3),
('Nachos con Carne', 'Nachos con carne molida, queso derretido, frijoles y guarniciones de pico de gallo y crema.', 65.00, 'Disponible', 3),
('Agua de Horchata', 'Bebida tradicional de arroz con canela, muy refrescante y dulce.', 25.00, 'Disponible', 2),
('Margarita', 'Cóctel clásico de tequila, lima y licor de naranja, con sal en el borde del vaso.', 80.00, 'Disponible', 2),
('Salsa Roja', 'Salsa roja casera hecha con chiles secos y especias, ideal para tacos y botanas.', 15.00, 'Disponible', 4),
('Salsa Verde', 'Salsa verde picante hecha con tomatillos y chiles serranos.', 15.00, 'Disponible', 4),
('Churros', 'Churros frescos, espolvoreados con azúcar y canela, acompañados de chocolate caliente.', 35.00, 'Disponible', 5),
('Flan Mexicano', 'Flan tradicional con un toque de vainilla y caramelo.', 40.00, 'Disponible', 5);

INSERT INTO usuario (Nombre, Password, Email, Telefono, DNI, Estado) VALUES
('Carlos López', 'carlos123', 'carloslopez@email.com', '555789456', '10123456', 'Activo'),
('Marta Gómez', 'marta456', 'marta@email.com', '555123789', '20234567', 'Activo'),
('Ricardo Ramírez', 'ricardo789', 'ricardo@email.com', '555987654', '30345678', 'Inactivo'),
('Luisa Fernández', 'luisa101', 'luisa@email.com', '555456123', '40456789', 'Activo');

INSERT INTO venta (Nombre, Telefono, DNI, Direccion, Tipo, Fecha, Estado, Total, Usuario_Id) VALUES
('Carlos López', '555789456', '10123456', 'Calle Mexicana 101, Ciudad X', 'Local', '2025-11-05 12:00:00', 'Completada', 235.00, 1),
('Marta Gómez', '555123789', '20234567', 'Avenida Libertad 202, Ciudad Y', 'Delivery', '2025-11-06 13:15:00', 'Completada', 200.00, 2),
('Luisa Fernández', '555456123', '40456789', 'Calle Fajitas 303, Ciudad Z', 'Local', '2025-11-07 17:30:00', 'Pendiente', 150.00, 4);

INSERT INTO detalle_venta (Venta_Id, Producto_Id, Cantidad, Subtotal) VALUES
(1, 1, 3, 150.00),  -- 3 Tacos al Pastor
(1, 3, 2, 90.00),  -- 2 Quesadillas de Pollo
(1, 4, 1, 65.00),  -- 1 Nachos con Carne
(2, 2, 2, 110.00),  -- 2 Tacos de Asada
(2, 5, 1, 25.00),  -- 1 Agua de Horchata
(2, 9, 1, 35.00),  -- 1 Churro
(3, 6, 2, 160.00),  -- 2 Margaritas
(3, 8, 2, 30.00);  -- 2 Salsas Verdes
