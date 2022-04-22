-- SELECT Syntax
SELECT column1, column2, ...
FROM table_name;

-- Devuelve todos los registros de una tabla.
SELECT * FROM table_name;

-- Ejemplos
-- Devuelve los registros de nombre y ciudad de la tabla clientes.
SELECT CustomerName, City FROM Customers;
-- Devuelve todos los registros de la tabla clientes.
SELECT * FROM Customers;
-- Devuelve el registro de ciudades de la tabla clientes.
SELECT City FROM Customers;


-- SELECT DISTINCT SYNTAX
-- Devuelve los registros pero no tiene en cuenta las celdas repetidas.
SELECT DISTINCT column1, column2, ...
FROM table_name;

-- Ejemplos
-- Devuelve el registro de países, incluso las celdas repetidas, de la tabla clientes.
SELECT Country FROM Customers;
/*Devuelve el registro de países, pero sin las celdas repetidas 
(solo muestra una vez cada país), de clientes.*/
SELECT DISTINCT Country FROM Customers;

-- Devuelve el número total de países diferentes de la tabla clientes.
SELECT COUNT(DISTINCT Country) FROM Customers;
-- Solución alternativa de MS Access:
SELECT Count(*) AS DistinctCountries
FROM (SELECT DISTINCT Country FROM Customers);
