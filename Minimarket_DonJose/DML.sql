-- Inserta datos (poblar tablas)
-- Tabla producto
INSERT INTO minmarketdj_schema.producto (nombre, costoProducto, precioVenta, stock, tipoProducto) VALUES ('Pasta dental', 490, 990 , 30,'Higiene Personal');
INSERT INTO minmarketdj_schema.producto (nombre, costoProducto, precioVenta, stock, tipoProducto) VALUES ('Fideos', 390, 790 , 40,'Alimentos');
INSERT INTO minmarketdj_schema.producto (nombre, costoProducto, precioVenta, stock, tipoProducto) VALUES ('Cartulina', 50, 200 , 20,'Papeleria');
INSERT INTO minmarketdj_schema.producto (nombre, costoProducto, precioVenta, stock, tipoProducto) VALUES ('Energetica Monster', 890, 1500 , 35,'Bebestibles');
INSERT INTO minmarketdj_schema.producto (nombre, costoProducto, precioVenta, stock, tipoProducto) VALUES ('Energetica Redbull', 890, 1500 , 25,'Bebestibles');
INSERT INTO minmarketdj_schema.producto (nombre, costoProducto, precioVenta, stock, tipoProducto) VALUES ('Coca-cola lata 250ml', 490, 990 , 40,'Bebestibles');
INSERT INTO minmarketdj_schema.producto (nombre, costoProducto, precioVenta, stock, tipoProducto) VALUES ('Coca-cola 3 litros', 2590, 3500 , 40,'Bebestibles');

-- Tabla proveedor
INSERT INTO minmarketdj_schema.proveedor (rut, nombre, direccion, telefono, email) VALUES ('76740317-8', 'Alimentos Spa' , 'Miraflores 332',224698686,'contacto@alimentosspa.cl');
INSERT INTO minmarketdj_schema.proveedor (rut, nombre, direccion, telefono, email) VALUES ('77643783-2', 'higienePersonal Spa' , 'Huerfanos 332',224656893,'contacto@higienepersonal.cl');
INSERT INTO minmarketdj_schema.proveedor (rut, nombre, direccion, telefono, email) VALUES ('77470107-9', 'Papeleria Spa' , 'Merced 332',224563225,'contacto@papeleriaspa.cl');
INSERT INTO minmarketdj_schema.proveedor (rut, nombre, direccion, telefono, email) VALUES ('76157584-8', 'Bebestibles Spa' , 'Enrique Maquiver 332',224667877,'contacto@bebestiblesspa.cl');
INSERT INTO minmarketdj_schema.proveedor (rut, nombre, direccion, telefono, email) VALUES ('76277117-9', 'Energy Spa' , 'Santo Domingo 887',224222425,'contacto@Energyspa.cl');
INSERT INTO minmarketdj_schema.proveedor (rut, nombre, direccion, telefono, email) VALUES ('77418364-7', 'Allmarket Spa' , 'San Antonio 888',223333536,'contacto@allmarketspa.cl');
INSERT INTO minmarketdj_schema.proveedor (rut, nombre, direccion, telefono, email) VALUES ('77522344-8', 'TresB Spa' , 'Mapocho 4676',224958473,'contacto@tresbspa.cl');

-- Tabla proveedor_producto
INSERT INTO minmarketdj_schema.proveedor_producto ( proveedor_id, producto_id) VALUES (1, 2);
INSERT INTO minmarketdj_schema.proveedor_producto ( proveedor_id, producto_id) VALUES (2, 1);
INSERT INTO minmarketdj_schema.proveedor_producto ( proveedor_id, producto_id) VALUES (3, 3);
INSERT INTO minmarketdj_schema.proveedor_producto ( proveedor_id, producto_id) VALUES (4, 4);
INSERT INTO minmarketdj_schema.proveedor_producto ( proveedor_id, producto_id) VALUES (5, 5);
INSERT INTO minmarketdj_schema.proveedor_producto ( proveedor_id, producto_id) VALUES (6, 6);
INSERT INTO minmarketdj_schema.proveedor_producto ( proveedor_id, producto_id) VALUES (7, 6);
INSERT INTO minmarketdj_schema.proveedor_producto ( proveedor_id, producto_id) VALUES (7, 7);

-- Tabla cliente
INSERT INTO minmarketdj_schema.cliente (nombre, rut) VALUES ('Juanito Perez', '14921487-9');
INSERT INTO minmarketdj_schema.cliente (nombre, rut) VALUES ('Belen Perez', '12463596-9');
INSERT INTO minmarketdj_schema.cliente (nombre, rut) VALUES ('Fernando Gatica', '15482752-8');
INSERT INTO minmarketdj_schema.cliente (nombre, rut) VALUES ('Luis Rojas', '18494864-8');
INSERT INTO minmarketdj_schema.cliente (nombre, rut) VALUES ('Hector Rodriguez', '17115981-4');
INSERT INTO minmarketdj_schema.cliente (nombre, rut) VALUES ('Laura Perez', '17889092-1');
INSERT INTO minmarketdj_schema.cliente (nombre, rut) VALUES ('Pamela Garcia', '19840398-9');

-- Tabla vendedor
INSERT INTO minmarketdj_schema.vendedor (nombre, rut, direccion) VALUES ('Marcela Paz', '15961687-7', 'Mapocho 4535');
INSERT INTO minmarketdj_schema.vendedor (nombre, rut, direccion) VALUES ('Miguel Rojas', '12456772-2','Neptuno 1357');

-- Tabla boleta (ingreso manual de ventas)
INSERT INTO minmarketdj_schema.boleta ( nombre, total, fecha, estado, cliente_id, vendedor_id) VALUES ('Minimarket Don Jose', 3000 , '2022-11-11','Pagada',1,2); -- producto_id= 4 *2 (total = 3000)
INSERT INTO minmarketdj_schema.boleta (nombre, total, fecha, estado, cliente_id, vendedor_id) VALUES ('Minimarket Don Jose', 5000 , '2022-01-10','Pagada',2,1); -- producto_id= 4 + producto_id= 7 (total = 5000)
INSERT INTO minmarketdj_schema.boleta (nombre, total, fecha, estado, cliente_id, vendedor_id) VALUES ('Minimarket Don Jose', 3700 , '2022-05-09','Pagada',1,2); -- producto_id= 7 + producto_id= 3 (total= 3700)

# SET SQL_SAFE_UPDATES = 0 -> desactivo el modo seguro;
# delete from minmarketdj_schema.boleta;
-- Reset al auto_increment de Tabla boleta
# Alter table minmarketdj_schema.boleta auto_increment=1;

-- Tabla historial_prodboleta
INSERT INTO minmarketdj_schema.historial_prodboleta (cantidad, boleta_id, producto_id) VALUES (2, 1, 4);
INSERT INTO minmarketdj_schema.historial_prodboleta (cantidad, boleta_id, producto_id) VALUES (1, 2, 4);
INSERT INTO minmarketdj_schema.historial_prodboleta (cantidad, boleta_id, producto_id) VALUES (1, 2, 7);
INSERT INTO minmarketdj_schema.historial_prodboleta (cantidad, boleta_id, producto_id) VALUES (1, 3, 7);
INSERT INTO minmarketdj_schema.historial_prodboleta (cantidad, boleta_id, producto_id) VALUES (1, 3, 3);

# delete from minmarketdj_schema.historial_prodboleta;
-- Reset al auto_increment de Tabla prodBoleta
#Alter table minmarketdj_schema.historial_prodboleta auto_increment=1;

-- Tabla historial_gananciaboleta
INSERT INTO minmarketdj_schema.historial_gananciaboleta (ganancia, boleta_id) VALUES (1220, 1); -- Boleta_id=1 -> producto_id= 4 *2 (total - costo*2) = 3000 - 1780 = 1220 
INSERT INTO minmarketdj_schema.historial_gananciaboleta (ganancia, boleta_id) VALUES (1520, 2); -- Boleta_id=2 -> producto_id= 4 + producto_id= 7 (total - (costo producto 4 + costo producto 7) = 5000 - (2590 + 890) = 5000 - 3480 = 1520
INSERT INTO minmarketdj_schema.historial_gananciaboleta (ganancia, boleta_id) VALUES (1060, 3); -- Boleta_id=3 -> producto_id= 7 + producto_id= 3 = 3700 - 2640 = 1060 

#delete from minmarketdj_schema.historial_gananciaboleta;
-- Reset al auto_increment de Tabla gananciaboleta
#Alter table minmarketdj_schema.historial_gananciaboleta auto_increment=1;

-- Muestra la tablas recien pobladas de nuesta bbdd 
-- Tabla producto
select * from minmarketdj_schema.producto;

-- Tabla proveedor
select * from minmarketdj_schema.proveedor;

-- Tabla proveedor_producto
select * from minmarketdj_schema.proveedor_producto;

-- Tabla cliente
select * from minmarketdj_schema.cliente;

-- Tabla vendedor
select * from minmarketdj_schema.vendedor;

-- Tabla historial_prodboleta
select * from minmarketdj_schema.historial_prodBoleta;

-- Tabla historial_gananciaboleta
select * from minmarketdj_schema.historial_gananciaBoleta;

-- Tabla boleta
select * from minmarketdj_schema.boleta;