-- WHERE Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition;

-- Ejemplos
-- Devuelve todos los registros de los clientes de México.
SELECT * FROM Customers
WHERE Country='Mexico'; -- Las palabras con comillas simples.
-- Devuelve todos los registros de los clientes de Berlín.
SELECT * FROM Customers
WHERE City='Berlin';
-- Devuelve todos los registros de los clientes que tengan una ID igual a 1.
SELECT * FROM Customers
WHERE CustomerID=1; -- Los números sin comillas.


---------------------------------------------------------------------------------------------------------------
-- OPERADORES

-- Igual =
-- Ejemplos
-- Devuelve todos los registros de los productos que tengan un precio igual a 18.
SELECT * FROM Products
WHERE Price = 18;
-- Devuelve todos los registros de los clientes que tengan un ID igual a 32.
SELECT * FROM Customers
WHERE CustomerID = 32;


-- Mayor que >*/
-- Devuelve todos los registros de los productos que tengan un precio mayor a 30.
SELECT * FROM Products
WHERE Price > 30;


-- Menor que <*/
-- Devuelve todos los registros de los productos que tengan un precio menor a 30.
SELECT * FROM Products
WHERE Price < 30;


-- Mayor igual que >=
-- Devuelve todos los registros de los productos que tengan un precio mayor o igual que 30.
SELECT * FROM Products
WHERE Price >= 30;


-- Menor igual que <=
-- Devuelve todos los registros de los productos que tengan un precio menor o igual que 30.
SELECT * FROM Products
WHERE Price <= 30;


-- No igual o distinto <> !=
-- Devuelve todos los registros de los productos que tengan un precio distinto a 18.
SELECT * FROM Products
WHERE Price <> 18;


-- Entre rangos BETWEEN
-- Devuelve todos los registros de los productos que tengan un precio entre 50 y 60 (ambos incluidos)
SELECT * FROM Products
WHERE Price BETWEEN 50 AND 60;


-- Como LIKE
-- Devuelve todos los registros de los clientes, cuyas ciudades tengan ese patrón (empezar por S)
SELECT * FROM Customers
WHERE City LIKE 's%';


-- En IN
-- Devuelve todos los registros de los clientes de París y Londres.
SELECT * FROM Customers
WHERE City IN ('Paris','London');

---------------------------------------------------------------------------------------------------------------
-- AND SYNTAX
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

-- Ejemplos
-- Devuelve todos los registros de los clientes que sean de Alemania y de Berlín.
SELECT * FROM Customers
WHERE Country='Germany' AND City='Berlin';
-- Devuelve todos los registros de los clientes que sean de Berlín, y tengan código postal 12209.
SELECT * FROM Customers
WHERE City='Berlin' AND PostalCode=12209;


-- OR SYNTAX
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;

-- Ejemplos
-- Devuelve todos los registros de los clientes de Alemania, y que sean de Berlín o Munich.
SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');
-- Devuelve todos los registros de los clientes de Berlin o de Londres.
SELECT * FROM Customers
WHERE City='Berlin' OR City='London';


-- NOT SYNTAX
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;

-- Ejemplos
-- Devuelve todos los registros de los clientes que no sean ni de Alemania ni de USA.
SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';
-- Devuelve todos los registros de los clientes que no sean de Berlín.
SELECT * FROM Customers
WHERE NOT City='Berlin';
