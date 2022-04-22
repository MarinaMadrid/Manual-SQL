-- DELETE
DELETE FROM table_name WHERE condition;
/*Como pasaba con UPDATE, WHERE indica que registros deben borrarse, por lo que,
si no se usa WHERE, se pondrá ese valor en toda la columna entera,
por ejemplo, todos los clientes se borran.*/

-- Ejemplo
-- Borra los clientes que se llamen Alfreds Futterkiste
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

-- Borra los clientes que sean de Noruega.
DELETE FROM Customers
WHERE Country='Norway';

-- Borra todas las filas sin borrar la tabla
DELETE FROM table_name;

-- Ejemplo
-- Borra todas las filas de la tabla Clientes
DELETE FROM Customers;
