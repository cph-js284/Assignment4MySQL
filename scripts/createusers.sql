CREATE USER 'Inventory'@'%' IDENTIFIED BY 'pass1234';
GRANT SELECT,INSERT,UPDATE,DELETE  ON classicmodels.products TO 'Inventory'@'%';
GRANT SELECT,INSERT,UPDATE,DELETE  ON classicmodels.productlines TO 'Inventory'@'%';
FLUSH PRIVILEGES; 

CREATE USER 'Bookkeeping'@'%' IDENTIFIED BY 'pass1234';
GRANT SELECT, INSERT, UPDATE ON classicmodels.customers TO 'Bookkeeping'@'%';
GRANT SELECT, INSERT, UPDATE ON classicmodels.payments TO 'Bookkeeping'@'%';
GRANT SELECT ON classicmodels.orderdetails TO 'Bookkeeping'@'%';
GRANT SELECT ON classicmodels.employees TO 'Bookkeeping'@'%';
GRANT SELECT ON classicmodels.offices TO 'Bookkeeping'@'%';
GRANT SELECT ON classicmodels.orders TO 'Bookkeeping'@'%';
GRANT SELECT ON classicmodels.orderdetails TO 'Bookkeeping'@'%';
GRANT SELECT ON classicmodels.productlines TO 'Bookkeeping'@'%';
GRANT SELECT ON classicmodels.products TO 'Bookkeeping'@'%';
FLUSH PRIVILEGES;

CREATE USER 'humanresource'@'%' IDENTIFIED BY 'pass1234';
GRANT SELECT, INSERT, UPDATE, DELETE ON classicmodels.employees TO 'humanresource'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON classicmodels.offices TO 'humanresource'@'%';
FLUSH PRIVILEGES;  

CREATE USER 'Sales'@'%' IDENTIFIED BY 'pass1234';
GRANT SELECT, INSERT, UPDATE ON classicmodels . orders TO 'Sales'@'%';
GRANT SELECT, INSERT, UPDATE ON classicmodels . orderdetails TO 'Sales'@'%';
GRANT SELECT, INSERT, UPDATE ON classicmodels . customers TO 'Sales'@'%';
FLUSH PRIVILEGES;

CREATE USER 'IT'@'localhost' IDENTIFIED BY 'pass1234';
GRANT ALL PRIVILEGES ON classicmodels . * TO 'IT'@'localhost';
FLUSH PRIVILEGES;
