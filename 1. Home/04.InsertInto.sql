-- INSERT INTO Syntax
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

INSERT INTO table_name
VALUES (value1, value2, value3, ...);

-- Ejemplos con todas las columnas
/*Meter un nuevo cliente en la tabla de clientes con la siguiente información:
Nombre de cliente: Cardinal
Nombre de contacto: Tom B. Erichsen
Dirección: Skagen 21
Ciudad: Stavanger
Código postal: 4006
País: Noruega
* No es necesario introducir en "CustomerID" porque es una celda con 
autoincremento, por lo que, se genera automáticamente.*/
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');


-- Ejemplos con columnas específicas
/*Meter un nuevo cliente en la tabla de clientes con la siguiente información:
Nombre de cliente: Cardinal
Ciudad: Stavanger
País: Noruega
* El resto de columnas aparece el valor "null" al no haberse insertado.*/
INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');


/*Meter un nuevo cliente en la tabla de clientes con la siguiente información:
Nombre de cliente: Hekkan Burger
Dirección: Gateveien 15
Ciudad: Sandnes
Código postal: 4306
País: Noruega.*/
INSERT INTO Customers (CustomerName, Address, City, PostalCode,Country)
VALUES ('Hekkan Burger','Gateveien 15','Sandnes','4306','Norway');
