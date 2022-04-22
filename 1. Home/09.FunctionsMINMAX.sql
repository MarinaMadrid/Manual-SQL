-- MIN() Syntax
-- Devuelve el valor más bajo de la columna seleccionada.
SELECT MIN(column_name)
FROM table_name
WHERE condition; 

-- Ejemplo
-- Devuelve el precio más barato de la tabla Productos.
SELECT MIN(Price) AS SmallestPrice
FROM Products;

-- Otra forma de escribir el ejemplo anterior.
SELECT MIN(Price)
FROM Products;


-- MAX() Syntax
-- Devuelve el valor más alto de la columna seleccionada.
SELECT MAX(column_name)
FROM table_name
WHERE condition;

-- Ejemplo
-- Devuelve el precio más alto de la tabla Productos.
SELECT MAX(Price) AS LargestPrice
FROM Products;

-- Otra forma de escribir el ejemplo anterior.
SELECT MAX(Price)
FROM Products;
