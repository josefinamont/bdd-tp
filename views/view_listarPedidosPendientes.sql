USE `restaurant`;
CREATE  OR REPLACE VIEW listarPedidosPendientes AS
SELECT mesa, nombre, tipo FROM ItemCartaGeneral NATURAL JOIN ItemPedidoCartaGeneral WHERE servido = false 
UNION
SELECT mesa, nombre, tipo FROM ItemPedidoMenu NATURAL JOIN ItemMenuPromocional NATURAL JOIN ItemCartaGeneral WHERE servido = false ORDER BY mesa ASC;;
