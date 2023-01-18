CREATE TABLE categorias (
	id_categoria int auto_increment,
    nombre_categoria varchar(100),
    PRIMARY KEY(id_categoria)
    );
    
    INSERT INTO categorias (nombre_categoria) 
		VALUES 
        ('Limpieza'), ('Decoración'), ('Perfumeria'), ('Almacen'), ('Bebidas'), ('Utensillos'), ('Electrodomesticos'),
        ('Congelados'), ('Heladeras'), ('Golosinas'), ('Bebidas Alcoholicas'), ('Enlatados');
        
	SELECT * FROM categorias;