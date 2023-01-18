CREATE TABLE empleados (
	id_empleado int auto_increment,
	DNI int,
    nombre varchar(50),
    apellido varchar(50),
	telefono varchar(20),
    fecha_naci date, 
    domicilio varchar (100),
    fecha_ingreso date,
    PRIMARY KEY (id_empleado)
);

INSERT INTO empleados (dni, nombre, apellido, telefono, fecha_naci, domicilio, fecha_ingreso) 
	values
    (40664382, 'Lourdes', 'Tara', 1178543376, 19920725, 'Av Asamblea 2378 1ro B', 20220408),
    (42864228, 'Julieta', 'Piaggio', 1199937465, 19970302, 'Juncal 1580', 20220305),
    (20765113, 'Francisco', 'Martinez', 1168893744, 19910419, 'Juan B. Justo 5800 2do C', 20200729),
    (31676338, 'Tamara Alicia', 'Gonzalez', 1166847348, 19900509, 'Av. Directorio 3765', 20210923),
    (26336859, 'Daniel', 'Romero', 1197642288, 19820530, 'Federico Lacroze 1398 8vo A', 20181115);
    
SELECT * FROM empleados;