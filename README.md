# PracticasMySQL

Practicando con MySQL Workbench creé una base de datos de un supermercado mayorista que recibe pedidos a traves de internet y coordina el envío. A cada cliente se le asigna un identificador único que permite relacionar sus datos personales con los pedidos.

La tabla "pedidos" contiene información sobre cada solicitud, incluyendo el cliente, el empleado responsable del armado, la agencia de correo, la fecha de pedido, la fecha de despacho y el destino.

En la tabla "detalle_pedidos" estan especificados los productos relevantes a cada pedido y la cantidad solicitada. Una vez ingresados los datos, se actualiza la columna "unidades_stock" de la tabla "productos" restando la cantidad de mercadería a entregar.
