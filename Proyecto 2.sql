-- Creación de la tabla Producto
CREATE TABLE Producto (
  producto_id SERIAL PRIMARY KEY,
  nombre VARCHAR(255),
  descripcion TEXT,
  precio DECIMAL(10, 2),
  categoria VARCHAR(255)
);

-- Creación de la tabla Cliente
CREATE TABLE Cliente (
  cliente_id SERIAL PRIMARY KEY,
  nombre VARCHAR(255),
  edad INTEGER,
  ubicacion VARCHAR(255)
);

-- Creación de la tabla Venta
CREATE TABLE Venta (
  venta_id SERIAL PRIMARY KEY,
  fecha_venta DATE,
  producto_id INTEGER REFERENCES Producto(producto_id),
  cliente_id INTEGER REFERENCES Cliente(cliente_id),
  cantidad_vendida INTEGER,
  precio_unitario DECIMAL(10, 2),
  fecha_id INTEGER REFERENCES Fecha(fecha_id)
);

-- Creación de la tabla Tienda
CREATE TABLE Tienda (
  tienda_id SERIAL PRIMARY KEY,
  nombre VARCHAR(255),
  direccion VARCHAR(255),
  ciudad VARCHAR(255),
  estado VARCHAR(255)
);

-- Creación de la tabla Venta_en_linea
CREATE TABLE Venta_en_linea (
  venta_en_linea_id SERIAL PRIMARY KEY,
  venta_id INTEGER REFERENCES Venta(venta_id),
  cliente_id INTEGER REFERENCES Cliente(cliente_id),
  metodo_pago VARCHAR(255),
  direccion_envio VARCHAR(255),
  fecha_id INTEGER REFERENCES Fecha(fecha_id)
);

-- Creación de la tabla Campaña
CREATE TABLE Campana (
  campana_id SERIAL PRIMARY KEY,
  tipo_campana VARCHAR(255),
  medio_utilizado VARCHAR(255),
  fecha_inicio_id INTEGER REFERENCES Fecha(fecha_id),
  fecha_fin_id INTEGER REFERENCES Fecha(fecha_id)
);

-- Creación de la tabla Inventario
CREATE TABLE Inventario (
  inventario_id SERIAL PRIMARY KEY,
  producto_id INTEGER REFERENCES Producto(producto_id),
  fecha_orden_id INTEGER REFERENCES Fecha(fecha_id),
  fecha_envio_id INTEGER REFERENCES Fecha(fecha_id),
  cantidad_en_stock INTEGER,
  cantidad_vendida INTEGER,
  cantidad_restante INTEGER
);

-- Creación de la tabla Proveedor
CREATE TABLE Proveedor (
  proveedor_id SERIAL PRIMARY KEY,
  producto_id INTEGER REFERENCES Producto(producto_id),
  nombre_proveedor VARCHAR(255),
  direccion VARCHAR(255),
  ciudad VARCHAR(255),
  estado VARCHAR(255)
);

-- Creación de la tabla Orden
CREATE TABLE Orden (
  orden_id SERIAL PRIMARY KEY,
  producto_id INTEGER REFERENCES Producto(producto_id),
  tienda_id INTEGER REFERENCES Tienda(tienda_id),
  cantidad_ordenes INTEGER,
  precio_total DECIMAL(10, 2),
  fecha INTEGER REFERENCES Fecha(fecha_id)
);

-- Creación de la tabla Envio
CREATE TABLE Envio (
  envio_id SERIAL PRIMARY KEY,
  orden_id INTEGER REFERENCES Orden(orden_id),
  direccion_envio VARCHAR(255),
  fecha INTEGER REFERENCES Fecha(fecha_id)
);

-- Creación de la tabla Fecha
CREATE TABLE Fecha (
  fecha_id SERIAL PRIMARY KEY,
  dia INTEGER,
  mes INTEGER,
  year INTEGER,
  hora VARCHAR(10)

	-- Creación de la tabla Rendimiento_Ventas
CREATE TABLE Rendimiento_Ventas (
	rendimiento_id SERIAL PRIMARY KEY,
	fecha_id INTEGER REFERENCES Fecha(fecha_id),
	producto_id INTEGER REFERENCES Producto(producto_id),
	cantidad_vendida INTEGER,
	ventas_generadas DECIMAL(10, 2)
);


	-- Creación de la tabla Resultados_Campanas
CREATE TABLE Resultados_Campanas (
	resultado_id SERIAL PRIMARY KEY,
	campana_id INTEGER REFERENCES Campana(campana_id),
	fecha_id INTEGER REFERENCES Fecha(fecha_id),
	ventas_generadas DECIMAL(10, 2)
);


	-- Creación de la tabla Movimientos_Inventario
CREATE TABLE Movimientos_Inventario (
	movimiento_id SERIAL PRIMARY KEY,
	producto_id INTEGER REFERENCES Producto(producto_id),
	fecha_id INTEGER REFERENCES Fecha(fecha_id),
	tipo_movimiento VARCHAR(255),
	cantidad INTEGER)



