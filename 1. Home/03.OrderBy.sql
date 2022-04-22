-- ORDER BY Syntax
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;

-- Ejemplos
-- Devuelve todos los registros de los clientes ordenados por país alfabéticamente.
SELECT * FROM Customers
ORDER BY Country;
-- Devuelve todos los registros de los clientes ordenados por ciudad alfabéticamente.
SELECT * FROM Customers
ORDER BY City;

-- Ejemplos con varias columnas
/*Devuelve todos los registros de los clientes ordenados alfabéticamente primero por el país, 
y luego por el nombre.*/
SELECT * FROM Customers
ORDER BY Country, CustomerName;
/*Devuelve todos los registros de los clientes ordenados alfabéticamente primero por el país, 
y luego por la ciudad.*/
SELECT * FROM Customers
ORDER BY Country, City;


-- DESC
-- Devuelve todos los registros de los clientes ordenados por país alfabéticamente inverso.
SELECT * FROM Customers
ORDER BY Country DESC;
-- Devuelve todos los registros de los clientes ordenados por ciudad alfabéticamente inverso.
SELECT * FROM Customers
ORDER BY City DESC;


-- ASC y DESC
/*Devuelve todos los registros de los clientes ordenados primero alfabéticamente por el país,
y luego alfabéticamente inverso por el nombre.*/
SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;
