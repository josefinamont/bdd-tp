#Listado en pantalla de la cocina para ver pedidos pendientes
#Tienen que salir distinguidos los pedidos que sean de menu a la carta y los que son de menu promocional
#Pedidos pendientes ordenados por el número de mesa
SELECT mesa, nombre FROM ItemCartaGeneral NATURAL JOIN ItemPedidoCartaGeneral WHERE servido = false ORDER BY mesa ASC;
SELECT mesa, nombreItem FROM ItemPedidoMenu WHERE servido = false ORDER BY mesa ASC;

# Tendencias de opciones de menus promocionales. De cada menu promocional, que cantidades de platos se han pedido hasta ahora
SELECT nombre, COUNT(*) as cantPlatos FROM ItemPedidoMenu NATURAL JOIN ItemMenuPromocional NATURAL JOIN ItemCartaGeneral GROUP BY idItem; 

# Idem pero con las opciones de carta
SELECT nombre, COUNT(*) as cantPlatos FROM ItemPedidoCartaGeneral NATURAL JOIN ItemCartaGeneral GROUP BY nombre;