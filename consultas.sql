-Listado en pantalla de la cocina para ver pedidos pendientes
-Tienen que salir distinguidos los pedidos que sean de menu a la carta y los que son de menu promocional
-Pedidos pendientes ordenados por el número de mesa


SELECT * FROM ItemPedidoCartaGeneral UNION ItemPedidoMenu
WHERE servido = false;