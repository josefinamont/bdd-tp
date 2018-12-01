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
VALUES(2, 1000, 250.00);

INSERT INTO Capacidad (idVino, tamaño, precio)
VALUES(3, 750, 100.00);

INSERT INTO Capacidad (idVino, tamaño, precio)
VALUES(4, 1000, 150.00);

INSERT INTO Capacidad (idVino, tamaño, precio)
VALUES(5, 750, 350.00);

INSERT INTO Capacidad (idVino, tamaño, precio)
VALUES(6, 1000, 400.00);