INSERT INTO classicmodels.employees (employeeNumber,lastname, firstname, extension, email, officeCode, reportsTo, jobTitle) values (1703, 'Hanson','Cliver','x101','mymail@hotmail.com','1','1002','Junior Sales');
INSERT INTO classicmodels.employees(lastName,firstName,extension,email,officeCode,reportsTo,jobTitle)VALUES('larsen','bo','x101','techsupport@live.dk',1,1002,'Tech support');
INSERT INTO classicmodels.products( productName, productLine, productScale, productVendor, productDescription,quantityInStock, buyPrice, MRSP ) VALUES (`Toyota Lexus`,` classic car` ,`1:10`,`Unimax Art Galleries`, `speedy`,`500`, `50`,`90`);
INSERT INTO classicmodels.orders (orderNumber, orderDate, requiredDate, shippedDate, status, comments, customerNumber) VALUES (10500, '2013-01-09', '2013-01-18', null, 'On Hold', 'Check on availability.', 128);
INSERT INTO classicmodels.orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber) VALUES (10500, 'S18_1749', 30, 136.00, 3);
INSERT INTO classicmodels.orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber) VALUES (10500, 'S18_2248', 50, 55.09, 2);
