#Listado en pantalla de la cocina para ver pedidos pendientes
#Tienen que salir distinguidos los pedidos que sean de menu a la carta y los que son de menu promocional
#Pedidos pendientes ordenados por el número de mesa
SELECT mesa, nombre, tipo FROM ItemCartaGeneral NATURAL JOIN ItemPedidoCartaGeneral WHERE servido = false 
UNION
SELECT mesa, nombre, tipo FROM ItemPedidoMenu NATURAL JOIN ItemMenuPromocional NATURAL JOIN ItemCartaGeneral WHERE servido = false ORDER BY mesa ASC;

#Listado de todas las cosas pedidas por una mesa con los importes
SELECT fechaYHoraInicioServicio, mesa, nombre, cantidad*precio AS precioTotal FROM PrecioPedidoCartaGeneral NATURAL JOIN ItemPedidoCartaGeneral 
NATURAL JOIN ItemCartaGeneral  NATURAL JOIN PrecioItemCartaGeneral WHERE fechaYHoraInicioServicio = '2018-11-30 10:32:00' AND mesa = 1 UNION
SELECT fechaYHoraInicioServicio, mesa, nombre, cantidad*precio AS precioTotal FROM PrecioPedidoVino NATURAL JOIN ItemPedidoVino NATURAL JOIN ItemVino
NATURAL JOIN Capacidad WHERE fechaYHoraInicioServicio = '2018-11-30 10:32:00' AND mesa = 1 UNION
SELECT fechaYHoraInicioServicio, mesa, nombreItem AS nombre, precio AS precioTotal FROM PrecioPedidoMenu NATURAL JOIN ItemPedidoMenu 
NATURAL JOIN ItemMenuPromocional NATURAL JOIN Pasos WHERE fechaYHoraInicioServicio = '2018-11-30 10:32:00' AND mesa = 1;

#Calcular el total (factura, agregacion) → no es obligatorio en este caso listar que opcion pidio

# Tendencias de opciones de menus promocionales. De cada menu promocional, que cantidades de platos se han pedido hasta ahora
SELECT nombre, COUNT(*) as cantPlatos FROM ItemPedidoMenu NATURAL JOIN ItemMenuPromocional NATURAL JOIN ItemCartaGeneral GROUP BY idItem;

# Idem pero con las opciones de carta
SELECT nombre, COUNT(*) as cantPlatos FROM ItemPedidoCartaGeneral NATURAL JOIN ItemCartaGeneral GROUP BY nombre;