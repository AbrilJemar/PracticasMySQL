CREATE TABLE pedidos (
	id_pedido int auto_increment,
    id_cliente int Unsigned,
    id_empleado int,
    fecha_pedido date,
    fecha_envio date,
    correo varchar(50),
    nro_envio varchar(50),
    ciudad_envio varchar(50),
    PRIMARY KEY (id_pedido),
    FOREIGN KEY(id_empleado) REFERENCES empleados(id_empleado),
	FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente)
);

SELECT * FROM pedidos;

INSERT INTO pedidos (id_cliente, id_empleado, fecha_pedido, fecha_envio, correo, nro_envio, ciudad_envio)
	VALUES
    (1, 3, 20220411, 20220417, 'Andreani S.A', 360000681733540, 'Buenos Aires');
    
INSERT INTO pedidos (id_cliente, id_empleado, fecha_pedido, fecha_envio, correo, nro_envio, ciudad_envio)
	VALUES
    (5, 3, 20220805, 20220820, 'OCA Envios', 3654000000000480355, 'Buenos Aires, CABA'),
    (2, 2, 20230106, 20230115, 'Andreani S.A', 3600007692837400, 'Pilar'),
    (3,4, 20201228, 20210110, 'Jose MOTO MENSAJERIA', 20847362, 'Merlo' ),
    (1, 5, 20200728, 20200809, 'Andreni S.A', 3600000076490324, 'Lomas del Mirador'),
    (3, 1, 20180612, 20200620, 'MOTO MENSAJERIA SAN PEDRO', 782233012, 'Sam Miguel del Monte');
    

UPDATE pedidos 
    SET ciudad_envio = 'Buenos Aires, CABA' 
    WHERE nro_envio = 360000681733540;
    
    SELECT * FROM pedidos;