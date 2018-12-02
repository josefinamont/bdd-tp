INSERT INTO Mozo (CUIL, nombreYApellido, telefono)
VALUES ('27379765510', 'JuanPerez', '43052241');

INSERT INTO Mozo (CUIL, nombreYApellido, telefono)
VALUES ('27359765510', 'AnaDiaz', '43052671');

INSERT INTO Mozo (CUIL, nombreYApellido, telefono)
VALUES ('2629765510', 'MariaVazquez', '43612121');

INSERT INTO Comanda (fechaYHoraInicioServicio, mesa, numeroDeComensales, observacion, completa, numeroMozo)
VALUES ('2018-11-29 10:30:00', 1, 5, 'Cuatro adultos y un menor', true, 1);

INSERT INTO Comanda (fechaYHoraInicioServicio, mesa, numeroDeComensales, completa, numeroMozo)
VALUES ('2018-11-29 10:32:00', 2, 4, true, 1);

INSERT INTO Comanda (fechaYHoraInicioServicio, mesa, numeroDeComensales, completa, numeroMozo)
VALUES ('2018-11-30 10:32:00', 1, 10, false, 1);

INSERT INTO Comanda (fechaYHoraInicioServicio, mesa, numeroDeComensales, completa, numeroMozo)
VALUES ('2018-11-30 10:40:00', 2, 6, false, 3);

INSERT INTO Comanda (fechaYHoraInicioServicio, mesa, numeroDeComensales, completa, numeroMozo)
VALUES ('2018-11-30 10:30:00', 3, 20, false, 2);

INSERT INTO Comanda (fechaYHoraInicioServicio, mesa, numeroDeComensales, completa, numeroMozo)
VALUES ('2018-11-30 10:35:00', 4, 5, false, 1);

INSERT INTO Domicilio (numeroMozo, calle, ubicacion, localidad)
VALUES (1, 'Paseo Colón 850', 'San Telmo', 'CABA');

INSERT INTO Domicilio (numeroMozo, calle, ubicacion, localidad)
VALUES (2, '12 de Octubre 3200', 'Quilmes', 'Buenos Aires');

INSERT INTO Domicilio (numeroMozo, calle, ubicacion, localidad)
VALUES (3, 'Arcos 2160', 'Belgrano', 'CABA');

INSERT INTO Categoria (nombre)
VALUES ('Sugerencias');

INSERT INTO Categoria (nombre)
VALUES ('Menú light');

INSERT INTO Categoria (nombre)
VALUES ('Entradas');

INSERT INTO Categoria (nombre)
VALUES ('Ensaladas');

INSERT INTO Categoria (nombre)
VALUES ('Sandwiches');

INSERT INTO Categoria (nombre)
VALUES ('Pastas');

INSERT INTO Categoria (nombre, nombreCategoriaSuperior)
VALUES ('Platos', 'Sugerencias');

INSERT INTO Categoria (nombre, nombreCategoriaSuperior)
VALUES ('Postres', 'Sugerencias');

INSERT INTO Categoria (nombre, nombreCategoriaSuperior)
VALUES ('Creppes', 'Menú light');

INSERT INTO Categoria (nombre, nombreCategoriaSuperior)
VALUES ('Verduras', 'Menú light');

INSERT INTO Categoria (nombre, nombreCategoriaSuperior)
VALUES ('Compuesta', 'Ensaladas');

INSERT INTO Categoria (nombre, nombreCategoriaSuperior)
VALUES ('Especiales', 'Ensaladas');

INSERT INTO Categoria (nombre, nombreCategoriaSuperior)
VALUES ('Fríos', 'Sandwiches');

INSERT INTO Categoria (nombre, nombreCategoriaSuperior)
VALUES ('Calientes', 'Sandwiches');

INSERT INTO Categoria (nombre, nombreCategoriaSuperior)
VALUES ('Adicionales', 'Sandwiches');

INSERT INTO Categoria (nombre, nombreCategoriaSuperior)
VALUES ('Salsas', 'Pastas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Crepe de Algarroba', 'Platos');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Suprema Piri-Piri', 'Platos');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Bifecitos de bondiola', 'Platos');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Lenguado Normanda', 'Platos');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Bife de chorizo relleno', 'Platos');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Lomo black', 'Platos');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Ojo de bife Malbec', 'Platos');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Entrañas Grillé', 'Platos');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Baileys Frozen', 'Postres');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Copa Finsur', 'Postres');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Light (frío)', 'Creppes');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('De atún (frío)', 'Creppes');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('De atún (frío)', 'Creppes');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Verde (caliente)', 'Creppes');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Oriental (caliente)', 'Creppes');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Mejillones a la Provenzal o al Ajillo', 'Entradas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Gambas al Ajillo', 'Entradas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Rabas', 'Entradas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Mayonesa de ave', 'Entradas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Mayonesa de atún', 'Entradas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Tomate relleno', 'Entradas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Empanada de Carne, Pollo o Jamón y Queso', 'Entradas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Empanada de Verdura o Humita', 'Entradas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Hasta tres ingredientes', 'Compuesta');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Hasta cinco ingredientes', 'Compuesta');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Completa', 'Compuesta');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('César', 'Especiales');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Del Chef', 'Especiales');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Centenario', 'Especiales');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Luli', 'Especiales');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Popeye', 'Especiales');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Emiliano', 'Especiales');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Rúcula y Parmesano', 'Especiales');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Jamón Crudo', 'Fríos');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Jamón Cocido', 'Fríos');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Salame', 'Fríos');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Leverwust', 'Fríos');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Hamburguesa', 'Calientes');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Pollo', 'Calientes');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Lomo', 'Calientes');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Milanesa', 'Calientes');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Queso', 'Adicionales');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Tomate y Lechuga', 'Adicionales');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Huevo Duro', 'Adicionales');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Ajíes', 'Adicionales');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Pickles', 'Adicionales');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Ñoquis', 'Pastas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Tallarines', 'Pastas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Spaguettis', 'Pastas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Ñoquis rellenos (blancos o verdes)', 'Pastas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Ravioles', 'Pastas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Sorrentinos', 'Pastas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Canelones', 'Pastas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Lasagna', 'Pastas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Crema de Jamón', 'Salsas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Crema de Jamón', 'Salsas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Parisién', 'Salsas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Cuatro Quesos', 'Salsas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Pesto', 'Salsas');

INSERT INTO ItemCartaGeneral (nombre, nombreCategoria)
VALUES ('Carbonara', 'Salsas');

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (1, 100.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (2, 150.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (3, 175.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (4, 150.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (5, 165.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (6, 150.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (7, 180.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (8, 150.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (9, 140.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (10, 150.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (11, 100.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (12, 100.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (13, 100.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (14, 100.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (15, 100.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (16, 150.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (16, 300.00, 4);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (17, 100.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (18, 130.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (18, 260.00, 4);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (19, 50.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (20, 50.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (21, 50.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (22, 40.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (23, 35.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (24, 95.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (24, 130.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (25, 110.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (25, 180.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (26, 150.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (26, 210.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (27, 150.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (28, 150.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (29, 150.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (30, 150.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (31, 150.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (32, 150.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (33, 150.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (34, 50.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (35, 50.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (36, 50.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (37, 50.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (38, 120.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (39, 115.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (39, 200.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (40, 180.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (40, 300.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (41, 150.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (41, 280.00, 2);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (42, 50.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (43, 50.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (44, 50.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (45, 50.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (46, 50.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (47, 150.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (48, 170.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (49, 170.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (50, 175.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (51, 150.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (52, 170.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (53, 200.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (54, 200.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (55, 80.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (56, 80.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (57, 80.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (58, 80.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (59, 80.00, 1);

INSERT INTO PrecioItemCartaGeneral (idItem, precio, tamaño)
VALUES (60, 80.00, 1);

INSERT INTO ItemPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, servido)
VALUES (17, '2018-11-29 10:30:00', 1, true);

INSERT INTO ItemPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, servido)
VALUES (16, '2018-11-29 10:30:00', 1, true);

INSERT INTO ItemPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, servido)
VALUES (27, '2018-11-29 10:30:00', 1, true);

INSERT INTO ItemPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, servido)
VALUES (18, '2018-11-29 10:32:00', 2, true);

INSERT INTO ItemPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, servido)
VALUES (41, '2018-11-29 10:32:00', 2, true);

INSERT INTO ItemPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, servido)
VALUES (40, '2018-11-29 10:32:00', 2, true);

INSERT INTO ItemPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, servido)
VALUES (47, '2018-11-30 10:30:00', 3, true);

INSERT INTO ItemPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, servido)
VALUES (51, '2018-11-30 10:30:00', 3, true);

INSERT INTO ItemPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, servido)
VALUES (53, '2018-11-30 10:30:00', 3, false);

INSERT INTO ItemPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, servido)
VALUES (53, '2018-11-30 10:32:00', 1, false);

INSERT INTO ItemPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, servido)
VALUES (54, '2018-11-30 10:32:00', 1, true);

INSERT INTO ItemPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, servido)
VALUES (41, '2018-11-30 10:35:00', 4, false);

INSERT INTO ItemPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, servido)
VALUES (40, '2018-11-30 10:40:00', 2, false);

INSERT INTO ItemPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, servido)
VALUES (39, '2018-11-30 10:40:00', 2, false);

INSERT INTO PrecioPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (17, '2018-11-29 10:30:00', 1, 100.00, 2, 1);

INSERT INTO PrecioPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (16, '2018-11-29 10:30:00', 1, 150.00, 2, 1);

INSERT INTO PrecioPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (27, '2018-11-29 10:30:00', 1, 150.00, 1, 1);

INSERT INTO PrecioPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (18, '2018-11-29 10:32:00', 2, 130.00, 2, 1);

INSERT INTO PrecioPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (41, '2018-11-29 10:32:00', 2, 150.00, 1, 1);

INSERT INTO PrecioPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (40, '2018-11-29 10:32:00', 2, 180.00, 1, 1);

INSERT INTO PrecioPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (47, '2018-11-30 10:30:00', 3, 150.00, 1, 10);

INSERT INTO PrecioPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (51, '2018-11-30 10:30:00', 3, 150.00, 1, 5);

INSERT INTO PrecioPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (53, '2018-11-30 10:30:00', 3, 200.00, 1, 5);

INSERT INTO PrecioPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (53, '2018-11-30 10:32:00', 1, 200.00, 1, 5);

INSERT INTO PrecioPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (54, '2018-11-30 10:32:00', 1, 200.00, 1, 5);

INSERT INTO PrecioPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (41, '2018-11-30 10:35:00', 4, 280.00, 2, 3);

INSERT INTO PrecioPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (40, '2018-11-30 10:40:00', 2, 300.00, 2, 2);

INSERT INTO PrecioPedidoCartaGeneral (idItem, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (39, '2018-11-30 10:40:00', 2, 200.00, 2, 1);

INSERT INTO MenuPromocional (nombre, desde, hasta, tipo)
VALUES ('desayuno light', '2018-11-29', '2018-12-31', 'desayuno');

INSERT INTO MenuPromocional (nombre, desde, hasta, tipo)
VALUES ('desayuno americano', '2018-11-01', '2018-12-10', 'desayuno');

INSERT INTO MenuPromocional (nombre, desde, hasta, tipo)
VALUES ('almuerzo light', '2018-10-01', '2018-11-10', 'almuerzo');

INSERT INTO MenuPromocional (nombre, desde, hasta, tipo)
VALUES ('almuerzo americano', '2018-12-01', '2019-10-01', 'almuerzo');

INSERT INTO MenuPromocional (nombre, desde, hasta, tipo)
VALUES ('merienda light', '2018-11-25', '2018-12-25', 'merienda');

INSERT INTO MenuPromocional (nombre, desde, hasta, tipo)
VALUES ('merienda americana', '2018-11-22', '2019-03-08', 'merienda');

INSERT INTO MenuPromocional (nombre, desde, hasta, tipo)
VALUES ('cena light', '2018-12-02', '2019-02-22', 'cena');

INSERT INTO MenuPromocional (nombre, desde, hasta, tipo)
VALUES ('cena americana', '2018-11-01', '2019-02-25', 'cena');

INSERT INTO DiasHabilitados (nombreMenu, desde, diasHabilitados)
VALUES ('desayuno light', '2018-11-29', 'LU');

INSERT INTO DiasHabilitados (nombreMenu, desde, diasHabilitados)
VALUES ('desayuno americano', '2018-11-01', 'MA');

INSERT INTO DiasHabilitados (nombreMenu, desde, diasHabilitados)
VALUES ('almuerzo light', '2018-10-01', 'MA');

INSERT INTO DiasHabilitados (nombreMenu, desde, diasHabilitados)
VALUES ('almuerzo americano', '2018-12-01', 'SA');

INSERT INTO DiasHabilitados (nombreMenu, desde, diasHabilitados)
VALUES ('merienda light', '2018-11-25', 'DO');

INSERT INTO DiasHabilitados (nombreMenu, desde, diasHabilitados)
VALUES ('merienda americana', '2018-11-22', 'SA');

INSERT INTO DiasHabilitados (nombreMenu, desde, diasHabilitados)
VALUES ('cena light', '2018-12-02', 'JU');

INSERT INTO DiasHabilitados (nombreMenu, desde, diasHabilitados)
VALUES ('cena americana', '2018-11-01', 'VI');

INSERT INTO Pasos (nombreMenu, desde, cantidadDePasos, precio)
VALUES ('desayuno light', '2018-11-29', 2, 150.00);

INSERT INTO Pasos (nombreMenu, desde, cantidadDePasos, precio)
VALUES ('desayuno americano', '2018-11-01', 3, 200.00);

INSERT INTO Pasos (nombreMenu, desde, cantidadDePasos, precio)
VALUES ('almuerzo light', '2018-10-01', 2, 230.00);

INSERT INTO Pasos (nombreMenu, desde, cantidadDePasos, precio)
VALUES ('almuerzo light', '2018-10-01', 3, 250.00);

INSERT INTO Pasos (nombreMenu, desde, cantidadDePasos, precio)
VALUES ('almuerzo americano', '2018-12-01', 2, 180.00);

INSERT INTO Pasos (nombreMenu, desde, cantidadDePasos, precio)
VALUES ('merienda light', '2018-11-25', 2, 160.00);

INSERT INTO Pasos (nombreMenu, desde, cantidadDePasos, precio)
VALUES ('merienda americana', '2018-11-22', 2, 170.00);

INSERT INTO Pasos (nombreMenu, desde, cantidadDePasos, precio)
VALUES ('cena light', '2018-12-02', 2, 160.00);

INSERT INTO Pasos (nombreMenu, desde, cantidadDePasos, precio)
VALUES ('cena americana', '2018-11-01', 2, 180.00);

INSERT INTO Pasos (nombreMenu, desde, cantidadDePasos, precio)
VALUES ('cena americana', '2018-11-01', 3, 230.00);

INSERT INTO ItemPedidoMenu (nombreItem, desde, fechaYHoraInicioServicio, mesa, servido)
VALUES ('merienda americana', '2018-11-22', '2018-11-29 10:30:00', 1, true);

INSERT INTO ItemPedidoMenu (nombreItem, desde, fechaYHoraInicioServicio, mesa, servido)
VALUES ('cena americana', '2018-11-01', '2018-11-30 10:32:00', 1, false);

INSERT INTO PrecioPedidoMenu (nombreItem, desde, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES ('merienda americana', '2018-11-22', '2018-11-29 10:30:00', 1, 170.00, 2, 2);

INSERT INTO PrecioPedidoMenu (nombreItem, desde, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES ('cena americana', '2018-11-01', '2018-11-30 10:32:00', 1, 230.00, 3, 2);

INSERT INTO Bodega (nombre) 
VALUES ('Alamos');

INSERT INTO Bodega (nombre) 
VALUES ('Trapiche');

INSERT INTO Bodega (nombre) 
VALUES ('Norton');

INSERT INTO Bodega (nombre) 
VALUES ('Kirkland');

INSERT INTO Bodega (nombre) 
VALUES ('Fuzion');

INSERT INTO ItemVino (nombre, variedadDeUva, colorOFermentacion, nombreBodega)
VALUES ('De Moño Rojo', 'Merlot', 'rojo', 'Alamos');

INSERT INTO ItemVino (nombre, variedadDeUva, colorOFermentacion, nombreBodega)
VALUES ('Almaviva Puente Alto', 'Cabernet Sauvignon', 'blanco', 'Trapiche');

INSERT INTO ItemVino (nombre, variedadDeUva, colorOFermentacion, nombreBodega)
VALUES ('Seña Valle De Aconcagua', 'Monastrell', 'rosado', 'Norton');

INSERT INTO ItemVino (nombre, variedadDeUva, colorOFermentacion, nombreBodega)
VALUES ('San Felipe 12 Uvas', 'Merlot', 'blanco', 'Kirkland');

INSERT INTO ItemVino (nombre, variedadDeUva, colorOFermentacion, nombreBodega)
VALUES ('Teho Malbec Tomal Vineyard', 'Syrah', 'rojo', 'Fuzion');

INSERT INTO ItemVino (nombre, variedadDeUva, colorOFermentacion, nombreBodega)
VALUES ('Altos Las Hormigas', 'Mencía', 'rosado', 'Alamos');

INSERT INTO Capacidad (idVino, tamaño, precio)
VALUES(1, 750, 200.00);

INSERT INTO Capacidad (idVino, tamaño, precio)
VALUES(1, 1000, 250.00);

INSERT INTO Capacidad (idVino, tamaño, precio)
VALUES(2, 1000, 250.00);

INSERT INTO Capacidad (idVino, tamaño, precio)
VALUES(3, 750, 100.00);

INSERT INTO Capacidad (idVino, tamaño, precio)
VALUES(3, 1000, 150.00);

INSERT INTO Capacidad (idVino, tamaño, precio)
VALUES(4, 1000, 150.00);

INSERT INTO Capacidad (idVino, tamaño, precio)
VALUES(5, 750, 350.00);

INSERT INTO Capacidad (idVino, tamaño, precio)
VALUES(5, 1000, 400.00);

INSERT INTO Capacidad (idVino, tamaño, precio)
VALUES(6, 1000, 400.00);

INSERT INTO ItemPedidoVino (idVino, fechaYHoraInicioServicio, mesa, servido)
VALUES (3, '2018-11-29 10:30:00', 1, true);

INSERT INTO ItemPedidoVino (idVino, fechaYHoraInicioServicio, mesa, servido)
VALUES (4, '2018-11-29 10:32:00', 2, true);

INSERT INTO ItemPedidoVino (idVino, fechaYHoraInicioServicio, mesa, servido)
VALUES (5, '2018-11-29 10:32:00', 2, true);

INSERT INTO ItemPedidoVino (idVino, fechaYHoraInicioServicio, mesa, servido)
VALUES (1, '2018-11-30 10:32:00', 1, true);

INSERT INTO ItemPedidoVino (idVino, fechaYHoraInicioServicio, mesa, servido)
VALUES (6, '2018-11-30 10:32:00', 1, true);

INSERT INTO ItemPedidoVino (idVino, fechaYHoraInicioServicio, mesa, servido)
VALUES (3, '2018-11-30 10:35:00', 4, false);

INSERT INTO PrecioPedidoVino (idVino, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (3, '2018-11-29 10:30:00', 1, 100.00, 750, 4);

INSERT INTO PrecioPedidoVino (idVino, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (4, '2018-11-29 10:32:00', 2, 150.00, 1000, 2);

INSERT INTO PrecioPedidoVino (idVino, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (5, '2018-11-29 10:32:00', 2, 350.00, 750, 2);

INSERT INTO PrecioPedidoVino (idVino, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (1, '2018-11-30 10:32:00', 1, 200.00, 750, 4);

INSERT INTO PrecioPedidoVino (idVino, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (6, '2018-11-30 10:32:00', 1, 400.00, 1000, 3);

INSERT INTO PrecioPedidoVino (idVino, fechaYHoraInicioServicio, mesa, precio, tamaño, cantidad)
VALUES (3, '2018-11-30 10:35:00', 4, 150.00, 1000, 2);

INSERT INTO Factura (numero, tipo, importeTotal, fechaYHora, numeroComprobante, fechaYHoraInicioServicio, mesa)
VALUES(111, 'A', 650.00, '2018-11-29 12:30:00', 10, '2018-11-29 10:30:00', 1);

INSERT INTO Factura (numero, tipo, importeTotal, fechaYHora, numeroComprobante, fechaYHoraInicioServicio, mesa)
VALUES(112, 'B', 300.00, '2018-11-29 11:30:00', 11, '2018-11-29 10:32:00', 2);

INSERT INTO Factura (numero, tipo, importeTotal, fechaYHora, numeroComprobante, fechaYHoraInicioServicio, mesa)
VALUES(113, 'A', 400.00, '2018-11-30 11:30:00', 12, '2018-11-30 10:32:00', 1);

INSERT INTO Factura (numero, tipo, importeTotal, fechaYHora, numeroComprobante, fechaYHoraInicioServicio, mesa)
VALUES(114, 'A', 1000.00, '2018-11-30 11:40:00', 13, '2018-11-30 10:40:00', 2);

INSERT INTO Factura (numero, tipo, importeTotal, fechaYHora, numeroComprobante, fechaYHoraInicioServicio, mesa)
VALUES(115, 'B', 200.00, '2018-11-30 11:00:00', 14, '2018-11-30 10:30:00', 3);

INSERT INTO Factura (numero, tipo, importeTotal, fechaYHora, numeroComprobante, fechaYHoraInicioServicio, mesa)
VALUES(116, 'A', 550.00, '2018-11-30 11:05:00', 15, '2018-11-30 10:35:00', 4);
    
INSERT INTO Pago (numeroFactura, tipoFactura) 
VALUES(111, 'A');

INSERT INTO Pago (numeroFactura, tipoFactura) 
VALUES(112, 'B');

INSERT INTO Pago (numeroFactura, tipoFactura) 
VALUES(113, 'A');

INSERT INTO Pago (numeroFactura, tipoFactura) 
VALUES(114, 'A');

INSERT INTO Pago (numeroFactura, tipoFactura) 
VALUES(115, 'B');

INSERT INTO Pago (numeroFactura, tipoFactura) 
VALUES(116, 'A');

INSERT INTO Tarjeta (numeroTarjeta, numeroFactura, tipoFactura, tipo, nombre, bancoEmisor, codigoSeguridad, codigoAutorizacion, numeroCupon)
VALUES(123456789123, 111, 'A', 'credito', 'Pedro Montes de Oca', 'Santander Rio', 600, '123', 1);

INSERT INTO Tarjeta (numeroTarjeta, numeroFactura, tipoFactura, tipo, nombre, bancoEmisor, codigoSeguridad, codigoAutorizacion, numeroCupon)
VALUES(123456789125, 112, 'B', 'debito', 'Maria Suarez', 'ICBC', 600, '123', 1);

INSERT INTO Tarjeta (numeroTarjeta, numeroFactura, tipoFactura, tipo, nombre, bancoEmisor, codigoSeguridad, codigoAutorizacion, numeroCupon)
VALUES(123456789124, 113, 'A', 'credito', 'Brenda Juarez', 'Credicoop', 600, '123', 1);

INSERT INTO Tarjeta (numeroTarjeta, numeroFactura, tipoFactura, tipo, nombre, bancoEmisor, codigoSeguridad, codigoAutorizacion, numeroCupon)
VALUES(123456789133, 114, 'A', 'credito', 'Sofia Avellaneda', 'Santander Rio', 600, '123', 1);

INSERT INTO Tarjeta (numeroTarjeta, numeroFactura, tipoFactura, tipo, nombre, bancoEmisor, codigoSeguridad, codigoAutorizacion, numeroCupon)
VALUES(123456789147, 115, 'B', 'debito', 'Carlos Mesa', 'BBVA Frances', 600, '123', 1);

INSERT INTO Tarjeta (numeroTarjeta, numeroFactura, tipoFactura, tipo, nombre, bancoEmisor, codigoSeguridad, codigoAutorizacion, numeroCupon)
VALUES(123456789199, 116, 'A', 'credito', 'Susana Gimenez', 'ICBC', 600, '123', 1);