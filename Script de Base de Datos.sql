-- Tabla Empleado 

CREATE TABLE Empleado (
	nombre1 varchar(20) not null,
	nombre2 varchar(20),
	apellido1 varchar(20) not null,
	apellido2 varchar(20) not null,
	cedula integer not null,
	fecha_de_nacimiento date not null,
	numero_telefono integer,
	fecha_ingreso date not null,
	edad integer,
	pass varchar(30) not null,
	usuario varchar(20) not null,
	id_sucursal integer,
	rol_name varchar(50),
	
	PRIMARY KEY(cedula),
	UNIQUE(cedula,usuario)

);


-- Tabla Rol

CREATE TABLE Rol (
	nombre varchar(50) not null,
	descripcion varchar(256),
	
	PRIMARY KEY(nombre)
);


-- Tabla Sucursal

CREATE TABLE Sucursal (
	id_sucursal serial not null,
	ubicacion varchar(256) not null,
	nombre_cine varchar(40) not null,
	cantidad_salas integer not null,
	
	PRIMARY KEY(id_sucursal)
);


-- Tabla cliente

CREATE TABLE Cliente (

	cedula integer not null,
	edad integer,
	nombre varchar(100) not null,
	fecha_nacimiento date not null,
	numero_telefono integer,
	pass varchar(30) not null,
	usuario varchar(30) not null,
	id_sucursal integer,
	
	PRIMARY KEY(cedula),
	UNIQUE(cedula)
);


-- Tabla sala

CREATE TABLE Sala (
	id_sala SERIAL not null,
	filas integer not null,
    capacidad integer not null,
	columnas integer not null,
	id_sucursal integer,
	
	PRIMARY KEY(id_sala)
);


-- Tabla Factura

CREATE TABLE Factura (

	clave integer Not Null,
	consecutivo integer Not Null,
	fact_id integer Not Null,
	detalle varchar(256) not null,
	fecha date not null,
	cedula_cliente integer,
	
	PRIMARY KEY(clave,consecutivo,fact_id),
	UNIQUE(clave,consecutivo,fact_id)
);


-- Tabla Pelicula

CREATE TABLE Pelicula (
	nombre_original varchar(40) not null,
	nombre varchar(40),
	duracion integer not null,
	imagen varchar(100),
	precio_menores integer,
	precio_adultos integer,
	precio_tercera_edad integer,
	
	PRIMARY KEY(nombre_original)
);


-- Tabla Pelicula por sala

CREATE TABLE Pelicula_por_sala (
    id_en_cartelera serial,
    sucursal_id integer,
    sala_id integer,
    nombre_pelicula varchar(40),
    hora varchar(6),

    PRIMARY KEY(id_en_cartelera,sala_id, nombre_pelicula, sucursal_id)

);



-- Tabla Clasificacion

CREATE TABLE Clasificacion (
	tipo_clasificacion varchar(6) not null,
	nombre_pelicula varchar(40),
	
	PRIMARY KEY(tipo_clasificacion,nombre_pelicula)
);



-- Tabla Director

CREATE TABLE Director(
	nombre varchar(100) not null,
	nombre_pelicula varchar(40),
	
	PRIMARY KEY (nombre,nombre_pelicula)
);


-- Tabla Protagonista

CREATE TABLE Protagonista(
	nombre varchar(100) not null,
	nombre_pelicula varchar(40),
	
	PRIMARY KEY (nombre,nombre_pelicula)
);


--Tabla asiento

CREATE TABLE Asiento (
	Salaid Integer,
	AsientoID Varchar(3),
	Disponibilidad Varchar(40),
	
	PRIMARY KEY(Salaid, AsientoID)
);

--Tabla horas

CREATE TABLE Horas (
	hora date
);


ALTER TABLE Empleado
ADD CONSTRAINT EMPLEADO_SUCURSAL_FK FOREIGN KEY	(id_sucursal)
REFERENCES Sucursal(id_sucursal);

ALTER TABLE Empleado
ADD CONSTRAINT EMPLEADO_ROL_FK FOREIGN KEY	(rol_name)
REFERENCES Rol(nombre);

ALTER TABLE Cliente
ADD CONSTRAINT CLIENTE_SUCURSAL_FK FOREIGN KEY	(id_sucursal)
REFERENCES Sucursal(id_sucursal);

ALTER TABLE Sala
ADD CONSTRAINT SALA_SUCURSAL_FK FOREIGN KEY	(id_sucursal)
REFERENCES Sucursal(id_sucursal);

ALTER TABLE Factura
ADD CONSTRAINT FACT_CLIENTE_FK FOREIGN KEY	(cedula_cliente)
REFERENCES Cliente(cedula);


ALTER TABLE Pelicula_por_sala
ADD CONSTRAINT PELICULA_SALA_FK FOREIGN KEY	(sala_id)
REFERENCES Sala(id_sala);

ALTER TABLE Pelicula_por_sala
ADD CONSTRAINT PELICULA_PELIC_FK FOREIGN KEY (nombre_pelicula)
REFERENCES Pelicula(nombre_original);

ALTER TABLE pelicula_por_sala
ADD CONSTRAINT PELICULA_SUC_FK FOREIGN KEY (sucursal_id)
REFERENCES Sucursal(id_sucursal);

ALTER TABLE Clasificacion
ADD CONSTRAINT PELICULA_CLAS_FK FOREIGN KEY (nombre_pelicula)
REFERENCES Pelicula(nombre_original);

ALTER TABLE Director
ADD CONSTRAINT PELICULA_DIREC_FK FOREIGN KEY (nombre_pelicula)
REFERENCES Pelicula(nombre_original);

ALTER TABLE Protagonista
ADD CONSTRAINT PELICULA_PROTA_FK FOREIGN KEY (nombre_pelicula)
REFERENCES Pelicula(nombre_original);

ALTER TABLE Asiento
ADD CONSTRAINT SIT_SALA_FK FOREIGN KEY (SalaID)
REFERENCES Sala(id_sala)

