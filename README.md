# PracticasMySQL

Practicando con MySQL Workbench creé una base de datos de un supermercado mayorista que recibe pedidos a través de internet y coordina el envío. A cada cliente se le asigna un identificador único que permite relacionar sus datos personales de la tabla "clientes" con los pedidos de la tabla "pedidos". Esta última contiene información sobre cada solicitud incluyendo el cliente, la agencia de correo, la fecha de pedido, la fecha de despacho y el destino.
En la tabla "detalle_pedidos" estan especificados los productos relevantes a cada pedido y la cantidad solicitada. Una vez ingresados los datos, se actualiza la columna "unidades_stock" de la tabla "productos" restando la cantidad de mercadería a entregar.
La tabla "proveedores" contiene información sobre los proveedores de los que el supermercado adquiere sus productos. Para facilitar la reposición de stock, a cada proveedor se le asigna un identificador único que lo relaciona con la tabla "productos".
