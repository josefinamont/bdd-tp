
#Listado en pantalla de la cocina para ver pedidos pendientes
#Tienen que salir distinguidos los pedidos que sean de menu a la carta y los que son de menu promocional
#Pedidos pendientes ordenados por el número de mesa
SELECT * FROM ItemPedidoCartaGeneral
WHERE servido = false;

# Tendencias de opciones de menus promocionales. De cada menu promocional, que cantidades de platos se han pedido hasta ahora
SELECT nombreItem, COUNT(*) as cantPlatos FROM ItemPedidoMenu GROUP BY nombreItem; 
