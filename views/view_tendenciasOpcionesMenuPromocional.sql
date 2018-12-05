USE `restaurant`;
CREATE  OR REPLACE VIEW tendenciasOpcionesMenuPromocional AS
SELECT nombre, COUNT(*) as cantPlatos 
FROM ItemPedidoMenu 
NATURAL JOIN ItemMenuPromocional 
NATURAL JOIN ItemCartaGeneral 
GROUP BY idItem;