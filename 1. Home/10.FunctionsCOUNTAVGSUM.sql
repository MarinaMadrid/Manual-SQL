-- COUNT() Syntax
/*Cuenta el número de filas que tienen el mismo criterio.
Los valores nulos no se cuentan.*/
SELECT COUNT(column_name)
FROM table_name
WHERE condition;

-- Ejemplos
-- Cuenta el número de productos.
SELECT COUNT(ProductID)
FROM Products;
-- Cuenta el número de registros que tienen como precio 18.
SELECT COUNT(*)
FROM Products
WHERE Price = 18;


-- AVG() Syntax
/*Hace la media de una columna numérica.
Los valores nulos no se tienen en cuenta.*/
SELECT AVG(column_name)
FROM table_name
WHERE condition;

-- Ejemplo
-- Hace la media del precio de todos los productos.
SELECT AVG(Price)
FROM Products;


-- SUM() Syntax
/*Hace la suma de una columna numérica.
Los valores nulos no se tienen en cuenta.*/
SELECT SUM(column_name)
FROM table_name
WHERE condition;

-- Ejemplos
-- Hace la suma de la cantidad de la tabla de Pedidos.
SELECT SUM(Quantity)
FROM OrderDetails;
-- Hace la suma del precio de los productos.
SELECT SUM(Price)
FROM Products; 
