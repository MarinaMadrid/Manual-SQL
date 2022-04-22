-- NULL values

-- Su valor es distinto de cero y de un espacio vacío.
/*Un campo con valor NULL es uno que se ha dejado en blanco
durante la creación del registro.*/

-- IS NULL Syntax
SELECT column_names
FROM table_name
WHERE column_name IS NULL;


-- IS NOT NULL Syntax
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;

-- Ejemplos
/*Devuelve los registros de nombre de cliente, el de de contacto y el de dirección de la tabla cliente, 
pero solamente las de aquellos clientes donde el valor de dirección no es nulo.*/
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;

-- Devuelve todos los registros pero solamente los de aquellos clientes donde el valor de código postal es nulo.
SELECT * 
FROM Customers 
WHERE PostalCode IS NULL;

-- Devuelve todos los registros pero solamente los de aquellos clientes donde el valor de código postal no es nulo.
SELECT * 
FROM Customers 
WHERE PostalCode IS NOT NULL;
