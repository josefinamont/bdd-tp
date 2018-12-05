USE `restaurant`;
CREATE  OR REPLACE VIEW totalCuentaMesa AS

SELECT mesa, SUM(precioTotal) AS precioFactura FROM (
	SELECT fechaYHoraInicioServicio, mesa, nombre, cantidad*precio AS precioTotal FROM PrecioPedidoCartaGeneral NATURAL JOIN ItemPedidoCartaGeneral 
	NATURAL JOIN ItemCartaGeneral  NATURAL JOIN PrecioItemCartaGeneral WHERE fechaYHoraInicioServicio = '2018-11-30 10:32:00' AND mesa = 1 UNION
	SELECT fechaYHoraInicioServicio, mesa, nombre, cantidad*precio AS precioTotal FROM PrecioPedidoVino NATURAL JOIN ItemPedidoVino NATURAL JOIN ItemVino
	NATURAL JOIN Capacidad WHERE fechaYHoraInicioServicio = '2018-11-30 10:32:00' AND mesa = 1 UNION
	SELECT fechaYHoraInicioServicio, mesa, nombreItem AS nombre, precio AS precioTotal FROM PrecioPedidoMenu NATURAL JOIN ItemPedidoMenu 
	NATURAL JOIN ItemMenuPromocional NATURAL JOIN Pasos WHERE fechaYHoraInicioServicio = '2018-11-30 10:32:00' AND mesa = 1) 
    AS PreciosPorPedido GROUP BY mesa, fechaYHoraInicioServicio;