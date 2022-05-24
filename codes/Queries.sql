/* ---------- 1 --------- */

SELECT  concat(p.first_name, ' ', p.last_name) as costumer_name, log.status_date , o.id_orders
FROM customers c
JOIN people p ON c.id_person = p.id_person
JOIN orders o ON c.id_customer = o.id_customer
JOIN order_log log ON o.id_orders = log.id_order
WHERE log.status_date BETWEEN "2020-01-01" AND "2021-08-12" and log.id_order_status = 301;

/*
The first step of the SQL is to read all the index using the key id_person. 
After SQl does a join with the table people with the key id_peson and then another join with the table customers and finally a last 
join and a where on the orders_log table.
*/

/* ---------- 2 drivers as customers--------- */
SELECT d.id_driver, concat(p.first_name, ' ', p.last_name) as driver_name, avg(o.rating)  as average_rating
FROM orders o
JOIN drivers d ON o.id_driver = d.id_driver
JOIN people p ON d.id_person = p.id_person
GROUP BY d.id_driver 
order by average_rating desc
LIMIT 3;

/*
First SQL select the table drivers and do a full index scan of the key id_driver, 
then it performs a join with table people using the id_person as key in both tables,
finally it does a join with the table orders using the id_driver as key in both tables.
*/
 
/* ---------- 2 real customers--------- */

select
c.id_person,
count(1) as number_orders,
sum(price_delivery) as total_payed
from orders o
join customers c
on o.id_customer = c.id_customer
group by c.id_person
order by total_payed DESC
limit 3
;
/*
First SQL select the table customers and do a full index scan in the key id_person and 
then performs a join with the table orders using the id_customer as key in both tables  	
*/


/* ---------- 3 --------- */
SELECT concat(month("2019-03-17"), '/', year("2019-03-17"), ' - ', month("2021-04-12"), '/', year("2021-04-12")) as PeriodOfSales,
		sum(o.price_delivery)-sum(o.drivers_fee) as TotalSales,
        (sum(o.price_delivery)-sum(o.drivers_fee))/timestampdiff(year,"2019-03-17","2021-04-12") as YearlyAverage,
        (sum(o.price_delivery)-sum(o.drivers_fee))/timestampdiff(month,"2019-03-17","2021-04-12") as MonthlyAverage 
FROM orders o
JOIN order_log log
ON o.id_orders = log.id_order
WHERE log.status_date BETWEEN "2019-03-17" AND "2021-04-12" and log.id_order_status = 301;

/*First SQL use the where statement only in the order_log table using the key id_order_status and returns 13 rows.
 After this the query will performe a join between the resulting table with the orders table using the primary key id_order as key  */

 /* ---------- 4 --------- */
 ## considering the delivery city where the sales happened
SELECT loc.id_city as city, count(1) as TotalSales_Geo
FROM orders o
JOIN location loc
ON o.id_location_delivery = loc.id_location
GROUP BY loc.id_city;

## considering the pickup city where the sales happened
SELECT loc.id_city as city, count(1) as TotalSales_Geo
FROM orders o
JOIN location loc
ON o.id_location_pickup= loc.id_location
GROUP BY loc.id_city;

/*First SQL do a full index scan in all 15 rows using the foreign key id_city from the table location.
After it is done a join with orders using the key id_location
after this the select statement is done and finally the group by 
This query the problem is the full index Scan, because with a large dataset the query will be slow*/
 
 /* ---------- 5 --------- */

SELECT loc.id_city as city,c.city_name, avg(o.rating)
FROM orders o
JOIN location loc ON o.id_location_delivery = loc.id_location
join city c on c.id_city = loc.id_city
WHERE o.rating is not null
group by loc.id_city ;

/*First SQL do a full index scan in the city table using the key index city name. 
After it is done a join with the location table using the key id_city, 
finally is done the join with the orders table using the id_location as the key, but the orders if filtered with the where condition.
after this the select statement is done and finally the group by. 
This query the problem is the full index Scan, because with a large dataset the query will be slow*/