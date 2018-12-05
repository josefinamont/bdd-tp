USE `restaurant`;
CREATE  OR REPLACE VIEW tendenciasOpcionesCartaGeneral AS
SELECT nombre, COUNT(*) as cantPlatos 
FROM ItemPedidoCartaGeneral 
NATURAL JOIN ItemCartaGeneral 
GROUP BY nombre;