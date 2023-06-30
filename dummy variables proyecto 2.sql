-- Inserción de datos de muestra en la tabla Producto
INSERT INTO Producto (nombre, descripcion, precio, categoria)
VALUES
  ('Producto 1', 'Descripción del producto 1', 10.99, 'Categoría 1'),
  ('Producto 2', 'Descripción del producto 2', 15.99, 'Categoría 2'),
  ('Producto 3', 'Descripción del producto 3', 5.99, 'Categoría 1');

-- Inserción de datos de muestra en la tabla Cliente
INSERT INTO Cliente (nombre, edad, ubicacion)
VALUES
  ('Cliente 1', 30, 'Ubicación 1'),
  ('Cliente 2', 25, 'Ubicación 2'),
  ('Cliente 3', 35, 'Ubicación 3');

-- Inserción de datos de muestra en la tabla Venta
INSERT INTO Venta (fecha_venta, producto_id, cliente_id, cantidad_vendida, precio_unitario, fecha_id)
VALUES
  ('2023-05-01', 1, 1, 2, 10.99, 1),
  ('2023-05-02', 2, 2, 1, 15.99, 2),
  ('2023-05-03', 3, 1, 3, 5.99, 3);

-- Inserción de datos de muestra en la tabla Tienda
INSERT INTO Tienda (nombre, direccion, ciudad, estado)
VALUES
  ('Tienda 1', 'Dirección 1', 'Ciudad 1', 'Estado 1'),
  ('Tienda 2', 'Dirección 2', 'Ciudad 2', 'Estado 2'),
  ('Tienda 3', 'Dirección 3', 'Ciudad 3', 'Estado 3');

-- Inserción de datos de muestra en la tabla Venta_en_linea
INSERT INTO Venta_en_linea (venta_id, cliente_id, metodo_pago, direccion_envio, fecha_id)
VALUES
  (1, 1, 'Tarjeta de crédito', 'Dirección envío 1', 1),
  (2, 2, 'PayPal', 'Dirección envío 2', 2),
  (3, 1, 'Transferencia bancaria', 'Dirección envío 3', 3);

-- Inserción de datos de muestra en la tabla Campana
INSERT INTO Campana (tipo_campana, medio_utilizado, fecha_inicio_id, fecha_fin_id)
VALUES
  ('Campaña 1', 'Redes sociales', 1, 2),
  ('Campaña 2', 'Email Marketing', 2, 3),
  ('Campaña 3', 'Anuncios en linea', 3, 4);

-- Inserción de datos de muestra en la Tabla Inventario
INSERT INTO Inventario (producto_id, fecha_orden_id, fecha_envio_id, cantidad_en_stock, cantidad_vendida, cantidad_restante)
VALUES
  (1, 1, 1, 100, 10, 90),
  (2, 2, 2, 50, 5, 45),
  (3, 3, 3, 200, 15, 185);

-- Inserción de datos de muestra en la tabla Proveedor
INSERT INTO Proveedor (producto_id, nombre_proveedor, direccion, ciudad, estado)
VALUES
  (1, 'Proveedor 1', 'Dirección 1', 'Ciudad 1', 'Estado 1'),
  (2, 'Proveedor 2', 'Dirección 2', 'Ciudad 2', 'Estado 2'),
  (3, 'Proveedor 3', 'Dirección 3', 'Ciudad 3', 'Estado 3');

-- Inserción de datos de muestra en la tabla Orden
INSERT INTO Orden (producto_id, tienda_id, cantidad_ordenes, precio_total, fecha)
VALUES
  (1, 1, 5, 54.95, 1),
  (2, 2, 3, 47.97, 2),
  (3, 3, 2, 29.98, 3);

-- Inserción de datos de muestra en la tabla Envio
INSERT INTO Envio (orden_id, direccion_envio, fecha)
VALUES
  (1, 'Dirección envío 1', 1),
  (2, 'Dirección envío 2', 2),
  (3, 'Dirección envío 3', 3);

-- Inserción de datos de muestra en la tabla Fecha
INSERT INTO Fecha (dia, mes, years, hora)
VALUES
  (1, 5, 2023, '08:30'),
  (2, 5, 2023, '12:45'),
  (3, 5, 2023, '18:15');


