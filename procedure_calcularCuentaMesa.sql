USE `restaurant`;
DROP procedure IF EXISTS `calcularCuentaDeMesa`;

DELIMITER $$
USE `restaurant`$$
CREATE PROCEDURE `calcularCuentaDeMesa`( numMesa INT, fechaYHora datetime )
BEGIN  
    SELECT SUM(precioTotal) AS precioFactura FROM (
	SELECT nombre, cantidad*precio AS precioTotal FROM PrecioPedidoCartaGeneral NATURAL JOIN ItemPedidoCartaGeneral 
	NATURAL JOIN ItemCartaGeneral  NATURAL JOIN PrecioItemCartaGeneral WHERE fechaYHoraInicioServicio = fechaYHora AND mesa = numMesa UNION
	SELECT nombre, cantidad*precio AS precioTotal FROM PrecioPedidoVino NATURAL JOIN ItemPedidoVino NATURAL JOIN ItemVino
	NATURAL JOIN Capacidad WHERE fechaYHoraInicioServicio = fechaYHora AND mesa = numMesa UNION
	SELECT nombreItem AS nombre, precio AS precioTotal FROM PrecioPedidoMenu NATURAL JOIN ItemPedidoMenu 
	NATURAL JOIN ItemMenuPromocional NATURAL JOIN Pasos WHERE fechaYHoraInicioServicio = fechaYHora AND mesa = numMesa) 
    AS PreciosPorPedido GROUP BY mesa, fechaYHoraInicioServicio;
END$$

DELIMITER ;

