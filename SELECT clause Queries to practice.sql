Crete query to get output information.

1) List all the products in the Northwinds database showing product id, product name, product quantity per unit, unit prite, and Units in stock.

SELECT productid, productname, quantityperunit, unitprice,unitsinstock

   FROM "database"."products";

2) For all employees at northwinds, list the first name & last name concated together with a blank space in between, and the year when they were hired.

SELECT CONCAT(firstname, lastname) AS "NAME", hiredate, date_part('year',hiredate)
FROM "database"."employees"; 

3) For all products in the northwinds database, list the productname, unitprice, unitsinstock, and total value of the inventory of that product as"Total Value !!..

SELECT productname, unitprice, unitsinstock, (unitsinstock * unitprice) AS "Total Value" 
    FROM "database"."products";

4) For all employess at northwinds, list the first name & lastname concatenated together with blank space in - between with a column header "Name" and the name of the month (spelled out) for each employess birthday.

SELECT CONCAT(firstname, lastname) AS "Name", birthdate, TO_CHAR(birthdate, 'month')
     FROM "database"."employees";