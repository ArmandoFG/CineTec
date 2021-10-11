--Insercion Sucursales
INSERT INTO Sucursal(ubicacion, nombre_cine, cantidad_salas) 
VALUES('San Francisco de Heredia', 'CineTec Oxigeno', 5); 

INSERT INTO Sucursal(ubicacion, nombre_cine, cantidad_salas) 
VALUES('San Rafael de Escazu', 'CineTec Multiplaza Escazu', 4); 

INSERT INTO Sucursal(ubicacion, nombre_cine, cantidad_salas) 
VALUES('Cartago', 'CineTec Paseo Metropoli', 4);

INSERT INTO Sucursal(ubicacion, nombre_cine, cantidad_salas) 
VALUES('Cartago', 'CineTec Paseo Metropoli', 5);

INSERT INTO Sucursal(ubicacion, nombre_cine, cantidad_salas) 
VALUES('Moravia', 'CineTec VIP Linconl', 2);

INSERT INTO Sucursal(ubicacion, nombre_cine, cantidad_salas) 
VALUES('Moravia', 'CineTec Linconl', 4);

INSERT INTO Sucursal(ubicacion, nombre_cine, cantidad_salas) 
VALUES('Curridabat', 'CineTec Multiplaza Curridabat', 5);

--Insercion Salas

--Salas Cine 1
INSERT INTO Sala(filas, columnas , capacidad, id_sucursal) 
VALUES(6, 12, 72, 1); 
INSERT INTO Sala(filas, columnas , capacidad, id_sucursal) 
VALUES(6, 12, 72, 1); 
INSERT INTO Sala(filas, columnas , capacidad, id_sucursal) 
VALUES(6, 12, 72, 1); 


--Salas Cine 2
INSERT INTO Sala(filas, columnas , capacidad, id_sucursal) 
VALUES(6, 12, 72, 2); 
INSERT INTO Sala(filas, columnas , capacidad, id_sucursal) 
VALUES(6, 12, 72, 2); 


--Salas Cine 3
INSERT INTO Sala(filas, columnas , capacidad, id_sucursal) 
VALUES(6, 12, 72, 3); 
INSERT INTO Sala(filas, columnas , capacidad, id_sucursal) 
VALUES(6, 12, 72, 3); 
INSERT INTO Sala(filas, columnas , capacidad, id_sucursal) 
VALUES(6, 12, 72, 3); 


--Salas Cine 4
INSERT INTO Sala(filas, columnas , capacidad, id_sucursal) 
VALUES(6, 12, 72, 4); 
INSERT INTO Sala(filas, columnas , capacidad, id_sucursal) 
VALUES(6, 12, 72, 4); 
INSERT INTO Sala(filas, columnas , capacidad, id_sucursal) 
VALUES(6, 12, 72, 4); 
INSERT INTO Sala(filas, columnas , capacidad, id_sucursal) 
VALUES(6, 12, 72, 4); 


--Salas Cine 5
INSERT INTO Sala(filas, columnas , capacidad, id_sucursal) 
VALUES(6, 12, 72, 5); 
INSERT INTO Sala(filas, columnas , capacidad, id_sucursal) 
VALUES(6, 12, 72, 5);


--Insercion de la clientes
INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(122243335,'Mario Neta Torcida','1993-01-01','80818283','MNT','mnetaT',1);
INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(133353335,'Susana Torio Morado','1995-02-02','82838485','SusMora','stm12',1);
INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(144461234,'Armando Bancos Ramirez','1994-03-03','86878889','Armaco','1234m',1);
INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(122189009,'Aitor Tilla Quemada','1994-03-03','86878889','tortilla','quemada03',1);

INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(155210907,'Ana Tomia Flores','1995-05-04','84838281','AFlores','girasol123',2);
INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(278901234,'Alan Brito Delgado','1993-07-01','88878685','Alambre','decobre32',2);
INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(296321480,'Zacarias Piedras del Rio','1993-03-04','60818283','Zpied','rioblanco04',2);
INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(603210899,'Veronica Gabas Lindo','1984-03-04','87712134','VeroC','v84g03l04',2);

INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(234561188,'Aquiles Pico Mora','1998-05-01','60838283','AquiPico','Moraazul01',3);
INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(298986060,'Elba Lazo Fuerte','1997-03-01','60838283','Balazo','9mm97',3);
INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(260012001,'Elmer Curio Gutierrez','1993-07-10','88878685','ElHg','mer0710',3);
INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(400213696,'Tomas Guarin Delgado','1990-07-01','78878331','GuarinT','tmsgrndlgd',3);

INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(396321480,'Susana Oria Masticada','1993-08-04','70818283','Zanahoria','susO12',4);
INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(334561188,'Aquiles Bailo Gonzalez','1998-05-01','70838283','AquiBG','Cacique23',4);
INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(398986060,'Rosa Celeste Cortez','1997-02-01','70838283','Rocor','flor970201',4);
INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(311234451,'Aitor Menta Gris','1994-10-10','70838283','Tormenta','thorMenta',4);

INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(312440815,'Alex Plosivo Piedra','1999-03-04','77818283','EXpiedra','PPxela',5);
INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(317185352,'Aquiles Pinto Paredes','1995-05-06','77838283','Aquiles123','Blanco12',5);
INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(313340092,'Zoyla Vaca Blanca','1997-08-10','64838283','ZoyBV','ZVBBVZ',5);
INSERT INTO Cliente (cedula,nombre,fecha_nacimiento,numero_telefono,usuario,pass,id_sucursal)
VALUES(312123434,'Isaac Arias Torres','1997-08-10','64838283','Torre2','AriasT10',5);


--Insert de Facturas
INSERT INTO Factura (clave, consecutivo, fact_id,detalle, fecha, cedula_cliente)
VALUES(000000001,12000122,1,'2 entradas Venom',CURRENT_DATE,122243335);
INSERT INTO Factura (clave, consecutivo, fact_id,detalle, fecha, cedula_cliente)
VALUES(023100001,23000122,1,'4 entradad PAW patrol',CURRENT_DATE,144461234);
INSERT INTO Factura (clave, consecutivo, fact_id,detalle, fecha, cedula_cliente)
VALUES(001330012,34000122,1,'10 entradas Venom',CURRENT_DATE,298986060);
INSERT INTO Factura (clave, consecutivo, fact_id,detalle, fecha, cedula_cliente)
VALUES(000033323,45000122,1,'1 entrada No time to die',CURRENT_DATE,398986060);
INSERT INTO Factura (clave, consecutivo, fact_id,detalle, fecha, cedula_cliente)
VALUES(000123412,56000122,1,'2 entradas Shang-Chi',CURRENT_DATE,312123434);
INSERT INTO Factura (clave, consecutivo, fact_id,detalle, fecha, cedula_cliente)
VALUES(001231230,67000122,1,'1 entrada Venom',CURRENT_DATE,396321480);
INSERT INTO Factura (clave, consecutivo, fact_id,detalle, fecha, cedula_cliente)
VALUES(000430000,78000122,1,'3 Entradas The devils doorway',CURRENT_DATE,400213696);
INSERT INTO Factura (clave, consecutivo, fact_id,detalle, fecha, cedula_cliente)
VALUES(003209009,89000122,1,'5 Entradas paw patrol',CURRENT_DATE,155210907);
INSERT INTO Factura (clave, consecutivo, fact_id,detalle, fecha, cedula_cliente)
VALUES(000231402,54000122,1,'2 entradad Venom',CURRENT_DATE,317185352);



-- Insert para los roles
INSERT INTO Rol (nombre, descripcion)
VALUES ('Conserje', 'Encargado de la limpieza del lugar'); 

INSERT INTO Rol (nombre, descripcion)
VALUES ('Administrador', 'Encargado de administrar el funcionamiento del cine'); 

INSERT INTO Rol (nombre, descripcion)
VALUES ('Cajero', 'Encargado de administrar las entradas y pagos de clientes a los cines'); 

INSERT INTO Rol (nombre, descripcion)
VALUES ('Seguridad', 'Encargado de custodiar las salas y asegurar el buen funcionamiento'); 

INSERT INTO Rol (nombre, descripcion)
VALUES ('Tecnico', 'Encargados de verificar el funcionamiento de las salas correctamente'); 

-- Insert para los empleado
INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Ricardo', 'Mauricio', 'Gonzalez', 'Rivera', 118903345, '1965-05-20', 22772277, '2018-02-13', 'daH58#e', 'Rigonza',
	1, 'Conserje' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Valeria', 'Maria', 'Fallas', 'Rodriguez', 418203496, '1985-01-13', 21141539, '2018-03-15', 'h4$faas', 'Valefa',
	1, 'Cajero' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Francisco', 'Juan', 'Araya', 'Barva', 118998765, '1978-08-17', 22234577, '2019-07-26', 'htf#JH45', 'Fraraya',
	1, 'Seguridad' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Carmen', 'Tatiana', 'Cordero', 'Ulloa', 219873335, '1974-05-31', 22562222, '2020-05-13', 'gua45F#e', 'Tacorderu',
	1, 'Administrador' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Jeferson', 'Aaron', 'Granados', 'Solis', 519873947, '1983-09-19', 22406010, '2018-10-29', 'gfER4$S', 'Jefergra',
	1, 'Tecnico' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Maria', 'Victoria', 'Naranjo', 'Mena', 619883754, '1970-06-21', 87940655, '2019-07-16', 'oi9W6&e', 'Manaranjo',
	2, 'Administrador' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Bryan', 'Enrique', 'Fonseca', 'Badilla', 319874290, '1984-02-28', 85858585, '2010-06-24', 'esa45&P', 'Bryfonse',
	2, 'Conserje' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Guadalupe', 'Johana', 'Navarro', 'Carvajal', 119889348, '1972-08-21', 88554433, '2020-12-02', 'har23#es', 'Guanava',
	2, 'Seguridad' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Luis', 'Roberto', 'Vargas', 'Chacon', 119823456, '1977-01-14', 88888282, '2017-04-22', 'prE47s', 'Luvar',
	2, 'Cajero' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Debora', 'Pamela', 'Vargas', 'Solis', 419887654, '1982-08-21', 71007100, '2019-10-31', 'ozuna123', 'Devargas',
	2, 'Tecnico' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Maria', 'Victoria', 'Naranjo', 'Mena', 619823754, '1970-06-21', 87940655, '2019-07-16', 'oi9W6&e', 'Manaranjo',
	3, 'Administrador' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Celeste', 'Tais', 'Becerra', 'Rivera', 319034560, '1988-08-22', 71758493, '2019-03-20', 'papita8', 'Celebece',
	3, 'Conserje' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Valentina', 'Ana', 'Espinoza', 'Blanco', 119023746, '1976-02-11', 89898989, '2020-04-23', 'telefono44', 'Valespi',
	3, 'Seguridad' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Armando', 'Billete', 'Monge', 'Solano', 519938839, '1967-06-18', 89097969, '2019-04-13', 'pretzel9', 'Armonge',
	3, 'Cajero' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Daniel', 'Jose', 'Vargas', 'Mora', 119374554, '1985-07-07', 87543232, '2016-05-16', 'musica09', 'Danivar',
	3, 'Tecnico' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Aron', 'Josue', 'Chinchilla', 'Mena', 119071054, '1978-01-29', 87418741, '2017-04-19', 'perri88', 'Arinchi',
	4, 'Administrador' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Alejandro', 'Pablo', 'Mata', 'Garita', 115629290, '1973-03-25', 89094444, '2018-08-22', 'sapito9', 'Alemata',
	4, 'Conserje' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Kelyn', 'Teresa', 'Austed', 'Lopez', 119295432, '1975-03-12', 88883838, '2020-03-12', 'cobija2', 'Kelopez',
	4, 'Seguridad' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Paulo', 'Cohelo', 'Gutierrez', 'Vargas', 112398236, '1972-06-12', 87788778, '2019-09-20', 'basurero2', 'Pauguti',
	4, 'Cajero' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Ariel', 'Miguel', 'Coto', 'Bustos', 114339694, '1980-02-22', 82222228, '2018-11-03', 'ovy34', 'Aricoto',
	4, 'Tecnico' ); 

VALUES ('Lionel', 'Messi', 'Martinez', 'Arias', 219203242, '1975-09-11', 81188111, '2019-09-01', 'mesa72', 'Liomesi',
	5, 'Administrador' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Juan', 'Antonio', 'Perez', 'Chaves', 219273290, '1981-08-18', 82147382, '2019-06-25', 'gatos43', 'Juape',
	5, 'Conserje' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Cristiano', 'Ronaldo', 'Santos', 'Aveiro', 129149356, '1973-04-14', 83838383, '2019-10-02', 'torre3', 'Crisanto',
	5, 'Seguridad' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Catalina', 'Maria', 'Rodriguez', 'Jimenez', 123923956, '1972-08-12', 83288328, '2018-09-19', 'celula9', 'Cataro',
	5, 'Cajero' ); 

INSERT INTO Empleado (nombre1, nombre2, apellido1, apellido2, cedula, fecha_de_nacimiento, numero_telefono, fecha_ingreso, pass, usuario,
	id_sucursal, rol_name )
VALUES ('Carlos', 'Oscar', 'Alvarado', 'Espinoza', 219834654, '1972-02-15', 84908490, '2019-08-24', 'carton2', 'Caralva',
	5, 'Tecnico' ); 


--Insert Peliculas

INSERT INTO Pelicula(nombre_original, nombre, duracion, imagen, precio_menores, precio_adultos, precio_tercera_edad) 
VALUES('Venom: Let There Be Carnage','Venom: Carnage liberado', 97, 'http://192.168.1.3:8081/img/venom.jpg', 2600, 3300, 2600);
INSERT INTO Pelicula(nombre_original, nombre, duracion, imagen, precio_menores, precio_adultos, precio_tercera_edad) 
VALUES('Shang-Chi','Shang-Chi', 132, 'http://192.168.1.3:8081/img/shang.jpg', 2500, 3200, 2500);
INSERT INTO Pelicula(nombre_original, nombre, duracion, imagen, precio_menores, precio_adultos, precio_tercera_edad) 
VALUES('PAW Patrol: The Movie','Paw Patrol: La película', 88, 'http://192.168.1.3:8081/img/paw.jpg', 2500, 3200, 2500);
INSERT INTO Pelicula(nombre_original, nombre, duracion, imagen, precio_menores, precio_adultos, precio_tercera_edad) 
VALUES('The Devils Doorway','El Monasterio: La puerta del diablo', 76, 'http://192.168.1.3:8081/img/monasterio.jpg', 2700, 3500, 2700);
INSERT INTO Pelicula(nombre_original, nombre, duracion, imagen, precio_menores, precio_adultos, precio_tercera_edad) 
VALUES('No Time to Die','Sin tiempo para morir', 163, 'http://192.168.1.3:8081/img/tiempo.jpg', 2500, 3200, 2500);


--Insert clasificacion
INSERT INTO clasificacion(tipo_clasificacion, nombre_pelicula) VALUES('TP12', 'Venom: Let There Be Carnage');
INSERT INTO clasificacion(tipo_clasificacion, nombre_pelicula) VALUES('TP7', 'Shang-Chi');
INSERT INTO clasificacion(tipo_clasificacion, nombre_pelicula) VALUES('TP', 'PAW Patrol: The Movie');
INSERT INTO clasificacion(tipo_clasificacion, nombre_pelicula) VALUES('M15', 'The Devils Doorway');
INSERT INTO clasificacion(tipo_clasificacion, nombre_pelicula) VALUES('M12', 'No Time to Die');


--Insert director
INSERT INTO director(nombre, nombre_pelicula) VALUES('Andy Serki', 'Venom: Let There Be Carnage');
INSERT INTO director(nombre, nombre_pelicula) VALUES('Destin Daniel Cretto', 'Shang-Chi');
INSERT INTO director(nombre, nombre_pelicula) VALUES('Cal Brunke', 'PAW Patrol: The Movie');
INSERT INTO director(nombre, nombre_pelicula) VALUES('Aislinn Clark', 'The Devils Doorway');
INSERT INTO director(nombre, nombre_pelicula) VALUES('Cary Joji Fukunag', 'No Time to Die');

--Insert Protagonista
INSERT INTO protagonista(nombre, nombre_pelicula) VALUES('Tom Hardy', 'Venom: Let There Be Carnage');
INSERT INTO protagonista(nombre, nombre_pelicula) VALUES('Michelle Williams', 'Venom: Let There Be Carnage');
INSERT INTO protagonista(nombre, nombre_pelicula) VALUES('Woody Harrelson', 'Venom: Let There Be Carnage');
INSERT INTO protagonista(nombre, nombre_pelicula) VALUES('Naomie Harri', 'Venom: Let There Be Carnage');
INSERT INTO protagonista(nombre, nombre_pelicula) VALUES('Simu Liu', 'Shang-Chi');
INSERT INTO protagonista(nombre, nombre_pelicula) VALUES('Awkwafina', 'Shang-Chi');
INSERT INTO protagonista(nombre, nombre_pelicula) VALUES('Benedict Wong', 'Shang-Chi');
INSERT INTO protagonista(nombre, nombre_pelicula) VALUES('Michelle Yeo', 'Shang-Chi');
INSERT INTO protagonista(nombre, nombre_pelicula) VALUES('Iain Armitage', 'PAW Patrol: The Movie');
INSERT INTO protagonista(nombre, nombre_pelicula) VALUES('Will Brisbin', 'PAW Patrol: The Movie');
INSERT INTO protagonista(nombre, nombre_pelicula) VALUES('Kim Kardashian', 'PAW Patrol: The Movie');
INSERT INTO protagonista(nombre, nombre_pelicula) VALUES('Jimmy Kimme', 'PAW Patrol: The Movie');
INSERT INTO protagonista(nombre, nombre_pelicula) VALUES('Lalor Roddy', 'The Devils Doorway');
INSERT INTO protagonista(nombre, nombre_pelicula) VALUES('Ciaran Flynn', 'The Devils Doorway');
INSERT INTO protagonista(nombre, nombre_pelicula) VALUES('Helena Beree', 'The Devils Doorway');
INSERT INTO protagonista(nombre, nombre_pelicula) VALUES('Rami Malek', 'No Time to Die');
INSERT INTO protagonista(nombre, nombre_pelicula) VALUES('Daniel Craig', 'No Time to Die');

--Insert pelicula por sala
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('1', '1','Venom: Let There Be Carnage', '13:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('1', '2','Venom: Let There Be Carnage', '16:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('1', '2','Venom: Let There Be Carnage', '19:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('1', '1','The Devils Doorway', '12:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('1', '3','The Devils Doorway', '13:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('1', '1','PAW Patrol: The Movie', '11:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('1', '3','PAW Patrol: The Movie', '13:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('1', '2','No Time to Die', '20:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('1', '3','No Time to Die', '22:30');


INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('2', '4','Venom: Let There Be Carnage', '12:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('2', '4','Venom: Let There Be Carnage', '16:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('2', '5','No Time to Die', '19:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('2', '4','The Devils Doorway', '9:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('2', '4','The Devils Doorway', '13:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('2', '5','PAW Patrol: The Movie', '14:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('2', '5','PAW Patrol: The Movie', '15:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('2', '5','PAW Patrol: The Movie', '18:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('2', '4','Venom: Let There Be Carnage', '20:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('2', '4','Shang-Chi', '15:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('2', '5','Shang-Chi', '17:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('2', '4','Shang-Chi', '22:30');

INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('3', '6','PAW Patrol: The Movie', '12:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('3', '7','PAW Patrol: The Movie', '16:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('3', '6','Venom: Let There Be Carnage', '9:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('3', '7','Venom: Let There Be Carnage', '13:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('3', '6','PAW Patrol: The Movie', '14:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('3', '7','No Time to Die', '15:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('3', '7','No Time to Die', '18:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('3', '8','No Time to Die', '19:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('3', '7','Venom: Let There Be Carnage', '20:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('3', '6','Shang-Chi', '15:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('3', '6','Shang-Chi', '17:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('3', '8','The Devils Doorway', '22:30');

INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('4', '9','The Devils Doorway', '12:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('4', '10','The Devils Doorway', '16:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('4', '9','Venom: Let There Be Carnage', '9:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('4', '11','Venom: Let There Be Carnage', '13:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('4', '9','No Time to Die', '14:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('4', '12','No Time to Die', '15:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('4', '12','No Time to Die', '18:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('4', '9','No Time to Die', '19:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('3', '12','Shang-Chi', '12:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('3', '11','Shang-Chi', '15:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('4', '9','Venom: Let There Be Carnage', '15:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('4', '9','Venom: Let There Be Carnage', '17:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('4', '12','Venom: Let There Be Carnage', '20:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('4', '11','The Devils Doorway', '22:30');

INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('5', '13','Shang-Chi', '9:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('5', '13','Shang-Chi', '12:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('5', '14','Shang-Chi', '15:30');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('5', '13','PAW Patrol: The Movie', '16:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('5', '14','Venom: Let There Be Carnage', '9:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('5', '14','Venom: Let There Be Carnage', '13:00');
INSERT INTO pelicula_por_sala(sucursal_id, sala_id, nombre_pelicula, hora) VALUES('5', '13','Venom: Let There Be Carnage', '22:30');


--Insert Asientos
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'A1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'A2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'A3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'A4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'A5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'A6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'A7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'A8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'A9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'A10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'A11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'A12', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'B1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'B2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'B3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'B4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'B5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'B6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'B7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'B8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'B9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'B10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'B11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'B12', 'Disponible');  
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'C1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'C2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'C3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'C4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'C5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'C6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'C7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'C8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'C9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'C10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'C11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'C12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'D1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'D2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'D3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'D4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'D5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'D6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'D7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'D8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'D9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'D10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'D11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'D12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'E1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'E2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'E3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'E4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'E5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'E6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'E7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'E8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'E9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'E10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'E11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'E12', 'Disponible'); 
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'F1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'F2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'F3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'F4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'F5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'F6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'F7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'F8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'F9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'F10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'F11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(1, 'F12', 'Disponible'); 


--Asientos Sala 2, Cine 1
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'A1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'A2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'A3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'A4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'A5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'A6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'A7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'A8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'A9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'A10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'A11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'A12', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'B1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'B2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'B3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'B4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'B5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'B6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'B7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'B8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'B9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'B10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'B11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'B12', 'Disponible');  
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'C1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'C2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'C3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'C4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'C5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'C6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'C7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'C8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'C9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'C10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'C11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'C12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'D1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'D2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'D3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'D4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'D5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'D6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'D7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'D8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'D9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'D10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'D11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'D12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'E1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'E2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'E3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'E4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'E5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'E6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'E7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'E8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'E9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'E10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'E11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'E12', 'Disponible'); 
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'F1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'F2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'F3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'F4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'F5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'F6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'F7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'F8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'F9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'F10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'F11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(2, 'F12', 'Disponible'); 




--Asientos Sala 3, Cine 1
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'A1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'A2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'A3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'A4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'A5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'A6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'A7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'A8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'A9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'A10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'A11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'A12', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'B1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'B2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'B3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'B4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'B5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'B6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'B7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'B8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'B9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'B10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'B11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'B12', 'Disponible');  
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'C1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'C2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'C3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'C4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'C5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'C6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'C7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'C8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'C9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'C10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'C11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'C12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'D1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'D2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'D3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'D4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'D5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'D6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'D7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'D8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'D9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'D10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'D11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'D12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'E1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'E2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'E3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'E4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'E5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'E6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'E7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'E8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'E9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'E10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'E11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'E12', 'Disponible'); 
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'F1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'F2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'F3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'F4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'F5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'F6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'F7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'F8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'F9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'F10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'F11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(3, 'F12', 'Disponible'); 




--Asientos Sala 5, Cine 2
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'A1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'A2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'A3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'A4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'A5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'A6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'A7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'A8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'A9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'A10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'A11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'A12', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'B1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'B2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'B3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'B4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'B5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'B6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'B7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'B8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'B9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'B10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'B11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'B12', 'Disponible');  
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'C1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'C2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'C3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'C4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'C5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'C6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'C7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'C8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'C9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'C10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'C11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'C12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'D1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'D2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'D3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'D4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'D5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'D6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'D7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'D8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'D9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'D10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'D11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'D12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'E1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'E2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'E3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'E4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'E5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'E6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'E7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'E8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'E9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'E10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'E11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'E12', 'Disponible'); 
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'F1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'F2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'F3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'F4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'F5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'F6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'F7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'F8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'F9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'F10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'F11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(4, 'F12', 'Disponible'); 


--Asientos Sala 2, Cine 2
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'A1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'A2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'A3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'A4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'A5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'A6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'A7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'A8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'A9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'A10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'A11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'A12', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'B1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'B2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'B3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'B4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'B5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'B6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'B7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'B8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'B9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'B10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'B11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'B12', 'Disponible');  
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'C1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'C2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'C3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'C4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'C5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'C6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'C7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'C8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'C9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'C10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'C11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'C12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'D1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'D2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'D3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'D4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'D5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'D6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'D7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'D8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'D9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'D10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'D11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'D12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'E1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'E2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'E3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'E4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'E5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'E6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'E7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'E8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'E9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'E10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'E11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'E12', 'Disponible'); 
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'F1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'F2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'F3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'F4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'F5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'F6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'F7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'F8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'F9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'F10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'F11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(5, 'F12', 'Disponible'); 


--Asientos Sala 6, Cine 3
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'A1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'A2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'A3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'A4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'A5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'A6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'A7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'A8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'A9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'A10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'A11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'A12', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'B1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'B2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'B3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'B4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'B5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'B6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'B7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'B8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'B9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'B10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'B11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'B12', 'Disponible');  
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'C1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'C2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'C3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'C4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'C5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'C6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'C7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'C8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'C9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'C10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'C11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'C12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'D1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'D2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'D3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'D4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'D5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'D6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'D7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'D8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'D9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'D10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'D11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'D12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'E1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'E2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'E3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'E4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'E5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'E6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'E7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'E8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'E9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'E10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'E11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'E12', 'Disponible'); 
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'F1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'F2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'F3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'F4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'F5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'F6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'F7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'F8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'F9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'F10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'F11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(6, 'F12', 'Disponible'); 


--Asientos Sala 2, Cine 3
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'A1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'A2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'A3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'A4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'A5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'A6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'A7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'A8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'A9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'A10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'A11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'A12', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'B1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'B2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'B3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'B4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'B5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'B6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'B7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'B8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'B9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'B10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'B11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'B12', 'Disponible');  
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'C1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'C2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'C3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'C4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'C5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'C6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'C7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'C8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'C9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'C10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'C11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'C12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'D1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'D2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'D3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'D4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'D5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'D6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'D7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'D8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'D9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'D10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'D11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'D12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'E1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'E2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'E3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'E4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'E5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'E6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'E7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'E8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'E9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'E10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'E11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'E12', 'Disponible'); 
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'F1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'F2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'F3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'F4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'F5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'F6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'F7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'F8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'F9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'F10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'F11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(7, 'F12', 'Disponible'); 


--Asientos Sala 3, Cine 3
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'A1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'A2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'A3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'A4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'A5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'A6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'A7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'A8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'A9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'A10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'A11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'A12', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'B1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'B2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'B3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'B4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'B5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'B6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'B7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'B8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'B9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'B10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'B11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'B12', 'Disponible');  
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'C1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'C2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'C3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'C4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'C5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'C6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'C7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'C8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'C9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'C10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'C11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'C12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'D1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'D2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'D3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'D4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'D5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'D6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'D7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'D8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'D9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'D10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'D11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'D12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'E1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'E2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'E3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'E4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'E5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'E6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'E7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'E8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'E9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'E10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'E11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'E12', 'Disponible'); 
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'F1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'F2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'F3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'F4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'F5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'F6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'F7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'F8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'F9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'F10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'F11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(8, 'F12', 'Disponible'); 




--Asientos Sala 10, Cine 4
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'A1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'A2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'A3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'A4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'A5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'A6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'A7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'A8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'A9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'A10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'A11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'A12', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'B1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'B2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'B3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'B4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'B5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'B6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'B7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'B8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'B9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'B10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'B11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'B12', 'Disponible');  
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'C1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'C2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'C3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'C4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'C5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'C6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'C7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'C8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'C9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'C10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'C11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'C12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'D1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'D2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'D3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'D4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'D5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'D6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'D7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'D8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'D9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'D10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'D11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'D12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'E1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'E2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'E3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'E4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'E5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'E6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'E7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'E8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'E9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'E10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'E11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'E12', 'Disponible'); 
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'F1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'F2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'F3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'F4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'F5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'F6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'F7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'F8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'F9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'F10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'F11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(9, 'F12', 'Disponible'); 


--Asientos Sala 2, Cine 4 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'A1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'A2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'A3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'A4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'A5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'A6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'A7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'A8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'A9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'A10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'A11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'A12', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'B1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'B2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'B3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'B4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'B5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'B6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'B7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'B8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'B9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'B10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'B11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'B12', 'Disponible');  
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'C1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'C2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'C3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'C4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'C5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'C6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'C7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'C8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'C9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'C10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'C11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'C12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'D1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'D2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'D3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'D4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'D5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'D6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'D7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'D8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'D9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'D10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'D11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'D12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'E1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'E2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'E3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'E4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'E5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'E6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'E7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'E8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'E9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'E10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'E11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'E12', 'Disponible'); 
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'F1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'F2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'F3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'F4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'F5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'F6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'F7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'F8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'F9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'F10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'F11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(10, 'F12', 'Disponible'); 




--Asientos Sala 3, Cine 4 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'A1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'A2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'A3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'A4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'A5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'A6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'A7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'A8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'A9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'A10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'A11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'A12', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'B1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'B2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'B3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'B4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'B5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'B6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'B7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'B8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'B9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'B10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'B11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'B12', 'Disponible');  
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'C1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'C2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'C3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'C4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'C5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'C6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'C7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'C8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'C9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'C10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'C11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'C12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'D1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'D2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'D3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'D4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'D5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'D6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'D7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'D8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'D9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'D10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'D11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'D12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'E1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'E2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'E3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'E4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'E5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'E6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'E7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'E8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'E9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'E10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'E11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'E12', 'Disponible'); 
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'F1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'F2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'F3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'F4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'F5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'F6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'F7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'F8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'F9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'F10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'F11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(11, 'F12', 'Disponible'); 


--Asientos Sala 4, Cine 4 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'A1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'A2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'A3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'A4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'A5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'A6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'A7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'A8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'A9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'A10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'A11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'A12', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'B1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'B2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'B3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'B4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'B5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'B6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'B7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'B8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'B9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'B10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'B11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'B12', 'Disponible');  
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'C1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'C2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'C3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'C4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'C5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'C6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'C7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'C8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'C9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'C10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'C11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'C12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'D1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'D2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'D3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'D4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'D5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'D6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'D7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'D8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'D9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'D10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'D11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'D12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'E1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'E2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'E3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'E4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'E5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'E6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'E7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'E8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'E9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'E10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'E11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'E12', 'Disponible'); 
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'F1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'F2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'F3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'F4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'F5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'F6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'F7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'F8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'F9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'F10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'F11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(12, 'F12', 'Disponible'); 


--Asientos Sala 13, Cine 5 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'A1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'A2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'A3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'A4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'A5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'A6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'A7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'A8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'A9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'A10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'A11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'A12', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'B1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'B2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'B3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'B4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'B5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'B6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'B7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'B8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'B9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'B10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'B11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'B12', 'Disponible');  
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'C1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'C2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'C3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'C4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'C5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'C6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'C7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'C8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'C9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'C10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'C11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'C12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'D1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'D2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'D3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'D4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'D5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'D6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'D7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'D8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'D9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'D10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'D11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'D12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'E1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'E2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'E3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'E4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'E5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'E6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'E7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'E8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'E9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'E10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'E11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'E12', 'Disponible'); 
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'F1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'F2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'F3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'F4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'F5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'F6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'F7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'F8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'F9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'F10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'F11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(13, 'F12', 'Disponible'); 


--Asientos Sala 2, Cine 5 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'A1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'A2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'A3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'A4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'A5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'A6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'A7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'A8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'A9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'A10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'A11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'A12', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'B1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'B2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'B3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'B4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'B5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'B6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'B7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'B8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'B9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'B10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'B11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'B12', 'Disponible');  
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'C1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'C2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'C3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'C4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'C5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'C6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'C7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'C8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'C9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'C10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'C11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'C12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'D1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'D2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'D3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'D4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'D5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'D6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'D7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'D8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'D9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'D10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'D11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'D12', 'Disponible'); 
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'E1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'E2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'E3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'E4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'E5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'E6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'E7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'E8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'E9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'E10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'E11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'E12', 'Disponible'); 
 INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'F1', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'F2', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'F3', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'F4', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'F5', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'F6', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'F7', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'F8', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'F9', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'F10', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'F11', 'Disponible');  
INSERT INTO Asiento(Salaid, AsientoID, Disponibilidad) 
VALUES(14, 'F12', 'Disponible');