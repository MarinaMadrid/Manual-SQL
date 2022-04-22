-- UPDATE

/*WHERE indica que registros deben actualizarse, por lo que,
si no se usa WHERE, se pondrá ese valor en toda la columna entera,
por ejemplo, todos los clientes se llamarían igual.*/
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

-- Ejemplos
-- Actualiza el nombre de contacto y ciudad del cliente con ID 1.
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

-- Actualiza el nombre de contacto de todos los clientes de México.
UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

-- Actualiza la ciudad de todos los clientes de Noruega.
UPDATE Customers
SET City='Oslo'
WHERE Country='Norway';

-- Actualiza la ciudad y el país de los clientes con ID 32.
UPDATE Customers
SET City='Oslo',
Country='Norway'
WHERE CustomerID = 32;

/*Actualiza el nombre de contacto de todos los clientes, por lo que,
todos los clientes tendrán el mismo nombre de contacto.*/
UPDATE Customers
SET ContactName='Juan';

/*Actualiza la ciudad de todos los clientes, por lo que,
todos los clientes tendrán la misma ciudad.*/
UPDATE Customers
SET City='Oslo';
