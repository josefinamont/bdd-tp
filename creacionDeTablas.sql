CREATE DATABASE IF NOT EXISTS restaurant;

USE `restaurant`;

CREATE TABLE IF NOT EXISTS Mozo (
	idMozo int NOT NULL AUTO_INCREMENT,
    CUIL bigint NOT NULL UNIQUE,
    nombreYApellido varchar(255) NOT NULL,
    telefono varchar(20) NOT NULL,
    PRIMARY KEY (idMozo)
    );

CREATE TABLE IF NOT EXISTS Comanda (
	fechaYHoraInicioServicio datetime NOT NULL,
    mesa int NOT NULL,
	numeroDeComensales int NOT NULL,
    observacion varchar(255),
    completa boolean NOT NULL,
    numeroMozo int NOT NULL,
	FOREIGN KEY (numeroMozo) REFERENCES Mozo(idMozo),
    PRIMARY KEY (fechaYHoraInicioServicio, mesa)
    );
    
CREATE TABLE IF NOT EXISTS Domicilio (
	numeroMozo int NOT NULL,
    calle varchar(100) NOT NULL,
    ubicacion varchar(50) NOT NULL,
    localidad varchar(50) NOT NULL,
    FOREIGN KEY (numeroMozo) REFERENCES Mozo(idMozo),
	PRIMARY KEY (numeroMozo)
    );
    
CREATE TABLE IF NOT EXISTS Categoria (
	nombre varChar(255) NOT NULL,
	nombreCategoriaSuperior varChar(255),
	FOREIGN KEY (nombreCategoriaSuperior) REFERENCES Categoria(nombre),
	PRIMARY KEY (nombre)
);
    
CREATE TABLE IF NOT EXISTS ItemCartaGeneral (
	idItem int NOT NULL AUTO_INCREMENT,
	nombre varChar(255) NOT NULL,
    nombreCategoria varChar(255) NOT NULL,
    FOREIGN KEY (nombreCategoria) REFERENCES Categoria(nombre),
	PRIMARY KEY (idItem)
    );
    
CREATE TABLE IF NOT EXISTS PrecioItemCartaGeneral (
	idItem int NOT NULL,
    precio float NOT NULL,
    tamaño int NOT NULL,
    FOREIGN KEY (idItem) REFERENCES ItemCartaGeneral(idItem),
	PRIMARY KEY (idItem, tamaño)
    );
    
CREATE TABLE IF NOT EXISTS ItemPedidoCartaGeneral (
	idItem int NOT NULL,
    fechaYHoraInicioServicio datetime NOT NULL,
    mesa int NOT NULL,
    servido boolean NOT NULL,
    tipo varchar(2) DEFAULT 'CG', 
	FOREIGN KEY (idItem) REFERENCES ItemCartaGeneral(idItem),
    FOREIGN KEY (fechaYHoraInicioServicio, mesa) REFERENCES Comanda (fechaYHoraInicioServicio, mesa),
    PRIMARY KEY (idItem, fechaYHoraInicioServicio, mesa)
    );
    
CREATE TABLE IF NOT EXISTS PrecioPedidoCartaGeneral (
	idItem int NOT NULL,
    fechaYHoraInicioServicio datetime NOT NULL,
    mesa int NOT NULL,
    precio float NOT NULL,
    tamaño int NOT NULL,
    cantidad int NOT NULL,
	FOREIGN KEY (idItem) REFERENCES ItemCartaGeneral(idItem),
    FOREIGN KEY (fechaYHoraInicioServicio, mesa) REFERENCES Comanda (fechaYHoraInicioServicio, mesa),
    PRIMARY KEY (idItem, fechaYHoraInicioServicio, mesa, precio, tamaño)
    );
    
CREATE TABLE IF NOT EXISTS MenuPromocional (
	nombre varchar(255) NOT NULL,
    desde date NOT NULL,
    hasta date NOT NULL,
    tipo enum('desayuno', 'almuerzo', 'merienda', 'cena') NOT NULL,
    PRIMARY KEY (nombre, desde)
    );
    
CREATE TABLE IF NOT EXISTS DiasHabilitados (
	nombreMenu varchar(255) NOT NULL,
    desde date NOT NULL,
    diasHabilitados set('LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'),
    FOREIGN KEY (nombreMenu,desde) REFERENCES MenuPromocional(nombre, desde),
	PRIMARY KEY (nombreMenu, desde, diasHabilitados)
    );
    
CREATE TABLE IF NOT EXISTS Pasos (
	nombreMenu varchar(255) NOT NULL,
    desde date NOT NULL,
    cantidadDePasos int NOT NULL,
    precio float NOT NULL,
    FOREIGN KEY (nombreMenu, desde) REFERENCES MenuPromocional(nombre, desde),
	PRIMARY KEY (nombreMenu, desde, cantidadDePasos)
    );
    
CREATE TABLE IF NOT EXISTS ItemPedidoMenu (
	nombreItem varChar(255) NOT NULL,
    desde date NOT NULL,
    fechaYHoraInicioServicio datetime NOT NULL,
    mesa int NOT NULL,
    servido boolean NOT NULL,
	FOREIGN KEY (nombreItem, desde) REFERENCES MenuPromocional(nombre, desde),
    FOREIGN KEY (fechaYHoraInicioServicio, mesa) REFERENCES Comanda (fechaYHoraInicioServicio, mesa),
    PRIMARY KEY (nombreItem, desde, fechaYHoraInicioServicio, mesa)
    );
    
CREATE TABLE IF NOT EXISTS PrecioPedidoMenu (
	nombreItem varChar(255) NOT NULL,
	desde date NOT NULL,
    fechaYHoraInicioServicio datetime NOT NULL,
    mesa int NOT NULL,
    precio float NOT NULL,
    tamaño int NOT NULL,
    cantidad int NOT NULL,
	FOREIGN KEY (nombreItem, desde) REFERENCES MenuPromocional(nombre, desde),
    FOREIGN KEY (fechaYHoraInicioServicio, mesa) REFERENCES Comanda (fechaYHoraInicioServicio, mesa),
    PRIMARY KEY (nombreItem, desde, fechaYHoraInicioServicio, mesa, precio, tamaño)
    );
   
CREATE TABLE IF NOT EXISTS Bodega (
	nombre varchar(100) NOT NULL,
    PRIMARY KEY (nombre)
    );
   
CREATE TABLE IF NOT EXISTS ItemVino (
	idVino int NOT NULL AUTO_INCREMENT,
	nombre varchar(50) NOT NULL,
    variedadDeUva varchar(50) NOT NULL,
	colorOFermentacion varchar(30) NOT NULL,
    nombreBodega varchar(100),
    FOREIGN KEY (nombreBodega) REFERENCES Bodega(nombre),
	PRIMARY KEY (idVino)
);

CREATE TABLE IF NOT EXISTS Capacidad (
	idVino int NOT NULL,
    tamaño int NOT NULL,
    precio float NOT NULL,
    FOREIGN KEY (idVino) REFERENCES ItemVino(idVino),
	PRIMARY KEY (idVino, tamaño)
);

CREATE TABLE IF NOT EXISTS ItemPedidoVino (
	idVino int NOT NULL,
    fechaYHoraInicioServicio datetime NOT NULL,
    mesa int NOT NULL,
    servido boolean NOT NULL,
    FOREIGN KEY (idVino) REFERENCES ItemVino(idVino),
    FOREIGN KEY (fechaYHoraInicioServicio, mesa) REFERENCES Comanda(fechaYHoraInicioServicio, mesa),
    PRIMARY KEY (idVino, fechaYHoraInicioServicio, mesa)
);

CREATE TABLE IF NOT EXISTS PrecioPedidoVino (
	idVino int NOT NULL,
    fechaYHoraInicioServicio datetime NOT NULL,
    mesa int NOT NULL,
    precio float NOT NULL,
    tamaño int NOT NULL,
    cantidad int NOT NULL,
	FOREIGN KEY (idVino) REFERENCES ItemVino(idVino),
    FOREIGN KEY (fechaYHoraInicioServicio, mesa) REFERENCES Comanda (fechaYHoraInicioServicio, mesa),
    PRIMARY KEY (idVino, fechaYHoraInicioServicio, mesa, precio, tamaño)
    );

CREATE TABLE IF NOT EXISTS Factura (
	numero int NOT NULL,
    tipo char NOT NULL,
    importeTotal float NOT NULL,
    fechaYHora dateTime NOT NULL,
    numeroComprobante int NOT NULL,
    fechaYHoraInicioServicio dateTime NOT NULL,
    mesa int NOT NULL,
    FOREIGN KEY (fechaYHoraInicioServicio, mesa) REFERENCES Comanda (fechaYHoraInicioServicio, mesa),
    PRIMARY KEY (numero, tipo)
    );
    
CREATE TABLE IF NOT EXISTS Pago (
	numeroFactura int NOT NULL,
    tipoFactura char NOT NULL,
    FOREIGN KEY (numeroFactura, tipoFactura) REFERENCES Factura (numero, tipo),
    PRIMARY KEY (numeroFactura, tipoFactura)
    );
    
CREATE TABLE IF NOT EXISTS Tarjeta (
	numeroTarjeta bigint NOT NULL,
    numeroFactura int NOT NULL,
    tipoFactura char NOT NULL,
    tipo enum('debito', 'credito') NOT NULL,
    nombre varchar(50) NOT NULL,
    bancoEmisor varchar(50),
    codigoSeguridad varchar(50) NOT NULL,
    codigoAutorizacion varchar(50) NOT NULL,
    numeroCupon int NOT NULL,
    FOREIGN KEY (numeroFactura, tipoFactura) REFERENCES Factura (numero, tipo),
    PRIMARY KEY (numeroTarjeta)
    );
    
CREATE TABLE IF NOT EXISTS ItemMenuPromocional (
	idItem int NOT NULL,
    nombreMenuPromocional varChar(255) NOT NULL,
	desde date NOT NULL,
    tipo varchar(2) DEFAULT 'MP',
	FOREIGN KEY (idItem) REFERENCES ItemCartaGeneral (idItem),
    FOREIGN KEY (nombreMenuPromocional, desde) REFERENCES MenuPromocional (nombre, desde),
    PRIMARY KEY (idItem, nombreMenuPromocional, desde)
    );