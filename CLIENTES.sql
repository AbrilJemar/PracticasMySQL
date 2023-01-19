CREATE TABLE cliente (
	DNI int(8),
    	nombre varchar(50),
    	apellido varchar(50),
	telefono varchar(20),
	fecha_naci date, -- DATE en formato 'YYYY-MM-DD'
    	PRIMARY KEY (DNI)
);

ALTER TABLE cliente MODIFY COLUMN dni int; -- no necesito darle una cantidad de numeros para ahorrar memoria, eso se hace solo en varchar
ALTER TABLE cliente DROP PRIMARY KEY; -- quiero poner nro_cliente como primary key. primero elimino la primary key original

ALTER TABLE cliente ADD nro_cliente int; -- agrego la columna nro_cliente sin el auto_increment 
-- porque solo la primary key puede ser auto_ increment
ALTER TABLE cliente ADD PRIMARY KEY (nro_cliente); -- defino nro_cliente como primary key
ALTER TABLE cliente MODIFY COLUMN nro_cliente int unsigned auto_increment; -- modifico la columna nro_cliente para que sea auto_increment
ALTER TABLE cliente RENAME COLUMN nro_cliente TO id_cliente;
RENAME TABLE cliente TO clientes;

ALTER TABLE clientes ADD domicilio varchar(100);

INSERT INTO clientes (dni, nombre, apellido, telefono, fecha_naci, domicilio) 
	values 
    (41345765, 'Matias', 'Massucco', 1134560987, 20080822, 'Libertad 1200'),
    (44253367, 'Abril', 'Jemar', 1123450987, 20020902, 'San Jose 1086 7mo B'),
    (4478948, 'Olga Maria', 'Benassi', 1576541234, 19470528, 'Beauchef 2200 PB 1'),
    (30980456, 'Natalia', 'Franco', 1166847348, 19900509, 'Av. Directorio 3765'),
    (26336859, 'Gustavo', 'Fernandez', 1194732658, 19840708, 'Gorostiaga 2279');
    
