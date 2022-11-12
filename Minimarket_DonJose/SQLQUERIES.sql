-- Traer productos que contengan la secuencia "dent" -> Debiese retornar el detalle de la fila asociada al producto llamado "Pasta dental".
select * from minmarketdj_schema.producto where nombre like '%dent%';

-- Traer el promedio del precioVenta de todos los productos -> 1352.8571
SELECT AVG(precioVenta) FROM minmarketdj_schema.producto;

-- Traer la suma de la ventas realizadas del año actual (Boletas con estado Pagado)
SELECT SUM(total) FROM minmarketdj_schema.boleta WHERE fecha>='2022/01/01' AND fecha<= '2022/11/11';

-- Traer el informe anual de ganancias asociadas al año actual
SELECT SUM(ganancia) FROM minmarketdj_schema.historial_gananciaBoleta h INNER JOIN minmarketdj_schema.boleta b ON h.boleta_id = b.boleta_id where  fecha>='2022/01/01' AND fecha<= '2022/11/11';


