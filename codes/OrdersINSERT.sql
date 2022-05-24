CREATE DEFINER=`root`@`localhost` TRIGGER `orders_AFTER_INSERT` AFTER INSERT ON `orders` FOR EACH ROW BEGIN
INSERT INTO order_log

SET 
status_time = TIME(NOW()) ,
status_date = DATE(NOW()) ,
id_order=NEW.id_orders,	
id_order_status=303,
id_city=(select id_city 
		 from location 
         left join orders on orders.id_location_pickup = location.id_location 
         where orders.id_location_pickup = NEW.id_location_pickup
         )
	  ;
END