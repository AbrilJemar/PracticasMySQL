CREATE TABLE proveedores (
	id_proveedor int auto_increment,
	nombre varchar(50),
	localidad varchar(50),
    direccion_casa_central varchar(100),
    telefono_contacto int,
    email_contacto varchar (50),
    PRIMARY KEY(id_proveedor)
    );
    

    
    INSERT INTO proveedores (nombre, localidad, direccion_casa_central, telefono_contacto, email_contacto)
		VALUES
        ('Mayorista Faro', 'Provincia de Buenos Aires, Lujan', 'Mariano Moreno 278', 118490048, 'Farolin@gmail.com'),
        ('Comercial el Rayo', 'Buenos Aires, CABA', 'Del Barco Centenera 3289', 1188773390, 'ElRayoSRA@outlook.com'),
        ('Distribuciones Pergamino SA', 'Buenos Aires, Pergamino', 'Blvd. Marcelino Urgarte 866', 1509876448, 'DistribuidorPerga@yahoo.com.ar');
        
        
	SELECT * FROM proveedores;