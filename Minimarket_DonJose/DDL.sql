-- Crea el esquema BBDD (en caso de que no exista)
CREATE SCHEMA IF NOT EXISTS minmarketdj_schema;
drop table minmarketdj_schema.producto;

-- Creacion de tablas
CREATE TABLE `minmarketdj_schema`.`proveedor`(
`proveedor_id` bigint NOT NULL AUTO_INCREMENT,
`rut`  VARCHAR(10) NOT NULL,
`nombre`  VARCHAR(50) NOT NULL,
`direccion`  VARCHAR(80) NOT NULL,
`telefono` INT NOT NULL,
`email` VARCHAR(50) NOT NULL,
PRIMARY KEY (`proveedor_id`));

CREATE TABLE `minmarketdj_schema`.`proveedor_producto`(
`proveedor_producto_id` bigint NOT NULL AUTO_INCREMENT,
PRIMARY KEY (`proveedor_producto_id`));

CREATE TABLE `minmarketdj_schema`.`producto`(
`producto_id` bigint NOT NULL AUTO_INCREMENT,
`nombre`  VARCHAR(50) NOT NULL,
`costoProducto` int NOT NULL,
`precioVenta` int NOT NULL,
`stock` int NOT NULL,
`tipoProducto`  VARCHAR(30) NOT NULL,
PRIMARY KEY (`producto_id`));

CREATE TABLE `minmarketdj_schema`.`historial_prodBoleta`(
`historial_prodBoleta_id` bigint NOT NULL AUTO_INCREMENT,
`cantidad` int NOT NULL,
PRIMARY KEY (`historial_prodBoleta_id`));

CREATE TABLE `minmarketdj_schema`.`historial_gananciaBoleta`(
`historial_gananciaBoleta_id` bigint NOT NULL AUTO_INCREMENT,
`ganancia` bigint NOT NULL, -- Obtenida a raíz de la diferencia que existe entre precioVenta y costo de cada producto.
PRIMARY KEY (`historial_gananciaBoleta_id`));

CREATE TABLE `minmarketdj_schema`.`cliente`(
`cliente_id` bigint NOT NULL AUTO_INCREMENT,
`nombre`  VARCHAR(50) NOT NULL,
`rut`  VARCHAR(10) NOT NULL,
PRIMARY KEY (`cliente_id`));

CREATE TABLE `minmarketdj_schema`.`boleta`(
`boleta_id` bigint NOT NULL AUTO_INCREMENT,
`nombre`  VARCHAR(50) NOT NULL,
`total` bigint NOT NULL, -- obtenido a raíz de la suma total de los productos asociados a la boleta_id.
`fecha` DATE NOT NULL,
`estado`  VARCHAR(20) NOT NULL, -- Estado= 'Pagada', 'Anulada', 'Emitida'.
PRIMARY KEY (`boleta_id`));

CREATE TABLE `minmarketdj_schema`.`vendedor`(
`vendedor_id` bigint NOT NULL AUTO_INCREMENT,
`nombre`  VARCHAR(50) NOT NULL,
`rut`  VARCHAR(10) NOT NULL,
`direccion`  VARCHAR(80) NOT NULL,
PRIMARY KEY (`vendedor_id`));


-- Creacion y asignacion de llaves foraneas para cada tabla
-- Tabla proveedor_producto
ALTER TABLE minmarketdj_schema.proveedor_producto ADD proveedor_id bigint NOT NULL;
ALTER TABLE minmarketdj_schema.proveedor_producto ADD producto_id bigint NOT NULL;
ALTER TABLE minmarketdj_schema.proveedor_producto ADD CONSTRAINT proveedorProducto FOREIGN KEY (proveedor_id) REFERENCES minmarketdj_schema.proveedor(proveedor_id);
ALTER TABLE minmarketdj_schema.proveedor_producto ADD CONSTRAINT productoProveedor FOREIGN KEY (producto_id) REFERENCES minmarketdj_schema.producto(producto_id);

-- Tabla historial_prodBoleta
ALTER TABLE minmarketdj_schema.historial_prodBoleta ADD boleta_id bigint NOT NULL;
ALTER TABLE minmarketdj_schema.historial_prodBoleta ADD producto_id bigint NOT NULL;
ALTER TABLE minmarketdj_schema.historial_prodBoleta ADD CONSTRAINT boletaProducto FOREIGN KEY (boleta_id) REFERENCES minmarketdj_schema.boleta(boleta_id);
ALTER TABLE minmarketdj_schema.historial_prodBoleta ADD CONSTRAINT productoBoleta FOREIGN KEY (producto_id) REFERENCES minmarketdj_schema.producto(producto_id);

-- Tabla historial_gananciaBoleta
ALTER TABLE minmarketdj_schema.historial_gananciaBoleta ADD boleta_id bigint NOT NULL;
ALTER TABLE minmarketdj_schema.historial_gananciaBoleta ADD CONSTRAINT boletaGanancia FOREIGN KEY (boleta_id) REFERENCES minmarketdj_schema.boleta(boleta_id);


-- Tabla boleta
ALTER TABLE minmarketdj_schema.boleta ADD cliente_id bigint NOT NULL;
ALTER TABLE minmarketdj_schema.boleta ADD vendedor_id bigint NOT NULL;
ALTER TABLE minmarketdj_schema.boleta ADD CONSTRAINT clienteBoleta FOREIGN KEY (cliente_id) REFERENCES minmarketdj_schema.cliente(cliente_id);
ALTER TABLE minmarketdj_schema.boleta ADD CONSTRAINT vendedorBoleta FOREIGN KEY (vendedor_id) REFERENCES minmarketdj_schema.vendedor(vendedor_id);

