CREATE TABLE detalle_pedidos (
	id_pedido int,
    	id_product int,
    	cantidad_produ int,
    
    	FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
	FOREIGN KEY (id_product) REFERENCES productos(id_product),
    	CONSTRAINT pedido_product PRIMARY KEY (id_pedido, id_product)
    );
    
    
    INSERT INTO detalle_pedidos (id_pedido, id_product, cantidad_produ)
	VALUES
        (1, 2, 4),
        (1, 5, 2),
        (1, 30, 10),
        (2, 10, 1),
        (2, 1, 3),
        (1, 11, 8),
        (4, 9, 7),
        (4, 20, 2),
        (6, 3, 20),
        (3, 22, 3),
        (3, 31, 4),
        (5, 7, 90),
        (2, 27, 4);
	
SELECT * FROM productos;       
              
              
UPDATE productos
	SET unidades_stock = unidades_stock-4 
	WHERE id_product = 2;
	
SELECT * FROM productos WHERE id_product = 2;
         
UPDATE productos
	SET unidades_stock = unidades_stock-2 
	WHERE id_product = 5;

 UPDATE productos
	SET unidades_stock = unidades_stock-10
    	WHERE id_product = 30;
    
 UPDATE productos
	SET unidades_stock = unidades_stock-1
    	WHERE id_product = 10;
    
 UPDATE productos
	SET unidades_stock = unidades_stock-3
    	WHERE id_product = 1;
    
 UPDATE productos
	SET unidades_stock = unidades_stock-8
    	WHERE id_product = 11;
    
 UPDATE productos
	SET unidades_stock = unidades_stock-7
    	WHERE id_product = 9;
    
 UPDATE productos
	SET unidades_stock = unidades_stock-2
    	WHERE id_product = 20;
    
 UPDATE productos
	SET unidades_stock = unidades_stock-20
    	WHERE id_product = 3;
    
 UPDATE productos
	SET unidades_stock = unidades_stock-3
   	WHERE id_product = 22;
    
 UPDATE productos
	SET unidades_stock = unidades_stock-4
    	WHERE id_product = 31;
    
 UPDATE productos
	SET unidades_stock = unidades_stock-90
    	WHERE id_product = 7;
    
 UPDATE productos
	SET unidades_stock = unidades_stock-4
    	WHERE id_product = 27;

SELECT productos.id_product, productos.nombre, detalle_pedidos.cantidad_produ FROM productos INNER JOIN detalle_pedidos ON productos.id_product = detalle_pedidos.id_product WHERE detalle_pedidos.id_pedido = 2;
SELECT productos.id_product, productos.nombre, detalle_pedidos.cantidad_produ FROM productos INNER JOIN detalle_pedidos ON productos.id_product = detalle_pedidos.id_product WHERE detalle_pedidos.id_pedido = 3;
SELECT productos.id_product, productos.nombre, detalle_pedidos.cantidad_produ FROM productos INNER JOIN detalle_pedidos ON productos.id_product = detalle_pedidos.id_product WHERE detalle_pedidos.id_pedido = 6;

