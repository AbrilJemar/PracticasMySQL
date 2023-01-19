CREATE TABLE productos (
	id_product int auto_increment,
	nombre varchar(50),
    	id_proveedor int,
    	precio_unitario double,
    	unidades_stock int,
    	PRIMARY KEY(id_product),
    	FOREIGN KEY(id_proveedor) REFERENCES proveedores(id_proveedor)
);

    ALTER TABLE productos MODIFY COLUMN nombre varchar (100);
    
    INSERT INTO productos (nombre, id_proveedor, precio_unitario, unidades_stock)
	VALUES
        ('Shampoo Dove nutritivo 500ml', 3, 350.50, 300),
	('Vino NORTON cosecha tardia tinto 750cc', 1, 582.29, 200),
        ('Postre MANTECOL CLASICO 110gr', 2, 175.72, 500),
        ('Jabon en polvo ZORRO MATIC CLASIC 3kg', 3, 862.29, 100),
        ('Aceite MOLTO GIRASOL 900cc', 2, 425.49, 500),
        ('Acondicionador SUAVE PERA 930cc', 3, 257.49, 300),
        ('Yerba AMANDA Px4 500gr', 2, 285.49, 1000),
        ('Crema DENTAL COLGATE HERBAL BLANQUEADORA 70gr', 3, 177.96, 900),
        ('Aceitunas MAROLIO VERDE SACHET 100gr', 2, 86.12, 100),
        ('Aceitunas NUCETE VERDE N°5 180gr', 2, 176.04, 75),
        ('Chicle TATOO TATTI FRUTTI 100un', 2, 783.89, 3),
        ('Chicle TOPLINE 7 SEVEN 16un', 2, 1343.88, 10),
        ('Chicle BELDENT MENTA FUERTE 20un', 2, 1343.88, 10),
        ('Turron MISKY 27gr', 2, 29, 100),
        ('Chocolate FELFORD MONEDA PIRATA 5gr', 2, 30.13, 50),
        ('Bizcochuelo PIC NIC DULCE LECHE 38gr', 2, 50.29, 100),
        ('Chocolate PARAGUITAS 13gr', 2, 61.49, 50),
        ('Provenzal MAROLIO 25gr', 2, 94.73, 70),
        ('Condimento para Pizza DOS ANCLAS 25gr', 2, 92.84, 80),
        ('Azafran ALICANTE 8x2gr', 2, 2239.89, 55),
        ('Dulce de leche LA SERENISIMA ESTILO COLONIAL FUENTE DE CALCIO 400gr', 2, 357.29, 150),
        ('Fideos MAROLIO MOSTACHOL LISO 500gr', 2, 123.09, 1000),
        ('Fideos MOLTO CABELLO DE ANGEL CORTO 500gr', 2, 145.49, 800),
        ('Fideos MOLTO DEDALITO 500gr', 2, 145.49, 850),
        ('Fideos LUCCHETTI TALLARINES 500gr', 2, 167.88, 700),
        ('Fideos LUCCHETTI CODITO 500gr', 2, 167.88, 750),
        ('Fideos MOLTO TIRABUZONES INTEGRALES 500gr', 2, 167.89, 700),
        ('Fideos MATARAZZO MOSTACHOL 500gr', 2, 179.09, 600),
        ('Flan RAVANA DULCE DE LECHE 60gr', 2, 89.48, 60),
        ('Flan MAROLIO CHOCOLATE 100gr', 2, 106.29, 50),
        ('Anana MOLTO RODAJA 565gr', 2, 638.29, 30),
        ('Galletitas POZO VAINILLA 480gr', 2, 425.5, 80),
        ('Galletitas VARIEDAD 590gr', 2, 492.68, 100),
        ('Galletitas REX ORIGINAL 75gr', 2, 134.29, 100),
        ('Bizcochos DON SATUR AZUCARADOS 200gr', 2, 134.29, 100),
        ('Choclo MOLTO CREMOSO BLANCO 350gr', 2, 117.48, 50),
        ('Lenteja MAROLIO TETRA RECART 340gr', 2, 120.84, 30),
        ('Lomito de Atun MOLTO ACEITE 170gr', 2, 492.68, 200),
        ('Calamar PUGLISI ACEITE 180gr', 2, 541.94, 400),
        ('Quitamanchas AYUDIN BLANCO SUPREMO 650ml', 3, 291.08, 40),
        ('Respuesto FUYI 45 NOCHES 32,9ml', 3, 772.69, 20),
        ('Limpiador ZORRO BAÑO DOYPACK 450ml', 3, 145.49, 30),
        ('Bolsa ASURIN RESIDUOS 3,45x60 10un', 3, 123, 300),
        ('Bolsa VIRUTEX BCA 40x40 20un', 3, 178.07, 200),
        ('Broches ARCO IRIS PLASTICO 12un', 3, 263.20, 50);
        
SELECT *FROM productos;
  
SELECT nombre, id_proveedor, precio_unitario, unidades_stock FROM productos INNER JOIN detalle_pedidos ON productos.id_product = detalle_pedidos.id_product; 
-- Pido que me muestre todos los productos que fueron encargados en algun pedido

SELECT nombre, id_proveedor, precio_unitario, unidades_stock FROM productos INNER JOIN detalle_pedidos ON productos.id_product = detalle_pedidos.id_product
	WHERE detalle_pedidos.id_pedido = 2;
-- Pido que me muestre todos los productos que se solicitaron en el pedido número 2
    
SELECT detalle_pedidos.id_pedido, productos.id_product, productos.nombre, detalle_pedidos.cantidad_produ, productos.precio_unitario FROM productos 
	INNER JOIN detalle_pedidos ON productos.id_product = detalle_pedidos.id_product WHERE detalle_pedidos.id_pedido = 2;
-- Pido que me muestre todos los productos que se solicitaron en el pedido número 2 pero esta vez, solicitando varias columnas, especificando de que tabla proviene cada columna
