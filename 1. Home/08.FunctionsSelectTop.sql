-- SELECT TOP

/*Especifica el número de registros que se devolverán.
Esto es muy útil para tablas con miles de registros, ya que,
devolver tanta cantidad de registros afectaría al rendimiento.*/

/*No todos los sistemas de bases de datos admiten SELECT TOP,
en su lugar tienen:
- MySQL: LIMIT
- Oracle: FETCH FIRST n ROWS ONLY y ROWNUM*/


-- SQL y MS Access Syntax
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;

-- Ejemplo
-- Devuelve los 3 primeros registros de la tabla clientes.
SELECT TOP 3 * FROM Customers;

-- Ejemplo con TOP PERCENT
-- Devuelve la primera mitad de los registros de la tabla clientes.
SELECT TOP 50 PERCENT * FROM Customers;

-- Ejemplo con WHERE
-- Devuelve los 3 primeros clientes que son de Alemania.
SELECT TOP 3 * FROM Customers
WHERE Country='Germany';


-- MySQL Syntax
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;

-- Ejemplo
-- Devuelve los 3 primeros registros de la tabla clientes.
SELECT * FROM Customers
LIMIT 3;

-- Ejemplo con WHERE
-- Devuelve los 3 primeros clientes que son de Alemania.
SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;


-- Oracle 12 Syntax
SELECT column_name(s)
FROM table_name
ORDER BY column_name(s)
FETCH FIRST number ROWS ONLY; 

-- Oracle Syntax (más antiguo)
SELECT column_name(s)
FROM table_name
WHERE ROWNUM <= number;

-- Oracle Syntax con ORDER BY
SELECT *
FROM (SELECT column_name(s) FROM table_name ORDER BY column_name(s))
WHERE ROWNUM <= number;

-- Ejemplo de Oracle 12
-- Devuelve los 3 primeros registros de la tabla clientes.
SELECT * FROM Customers
FETCH FIRST 3 ROWS ONLY;

-- Ejemplo de Oracle 12 con PERCENT
-- Devuelve la primera mitad de los registros de la tabla clientes.
SELECT * FROM Customers
FETCH FIRST 50 PERCENT ROWS ONLY;

-- Ejemplo de Oracle 12 con WHERE
-- Devuelve los 3 primeros clientes que son de Alemania.
SELECT * FROM Customers
WHERE Country='Germany'
FETCH FIRST 3 ROWS ONLY;
