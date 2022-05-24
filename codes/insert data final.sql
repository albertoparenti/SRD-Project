use mydb;

insert into `driver_status` (`id_status`,	`status`) values
(101,	'Documents ok'),
(102,	'Documents not ok');

insert into `customers_status` (`id_customers_status`,	`customers_status`) values
(201,	'Registration ok'),
(202,	'Registration not ok');


insert into `people` (`id_person`,	`first_name`,	`last_name`,	`date_of_birth`,	`date_registration`) values
(1,	'Julia',	'Roberts',	'1969-05-21',	'2019-12-19'),
(2,	'Luis',	'Camoes',	'2000-04-01',	'2019-10-20'),
(3,	'Cristovão',	'Colombo',	'1984-11-14',	'2019-11-10'),
(4,	'Silvio',	'Berlusconi',	'1976-12-25',	'2019-10-06'),
(5,	'Sylvester',	'Stallone',	'1991-07-17',	'2019-12-08'),
(6,	'Bill',	'Gates',	'1968-08-01',	'2019-12-08'),
(7,	'Elon',	'Mosca',	'1987-12-05',	'2019-11-26'),
(8,	'Robert',	'Lavanda',	'1989-04-26',	'2019-10-12'),
(9,	'Rogerio',	'Ceni',	'1992-02-26',	'2019-10-19'),
(10,	'Marco ',	'Materazzi',	'2000-03-09',	'2019-11-09'),
(11,	'Celine',	'Dion',	'2003-05-03',	'2019-12-07'),
(12,	'Carlota',	'Joaquina',	'1988-09-14',	'2019-12-03'),
(13,	'Cesar ',	'Azpilicueta',	'1991-04-12',	'2019-11-04'),
(14,	'Alberta',	'Ronaldo',	'2003-10-07',	'2019-10-01'),
(15,	'Cristiano',	'Ferretti',	'1990-02-19',	'2019-12-28');


insert into `city` (`id_city`,	`city_name`) values
(1,	'Lisboa'),
(2,	'Porto'),
(3,	'Cascais'),
(4,	'Setubal'),
(5,	'Coimbra'),
(6,	'Sintra');

insert into `location` (`id_location`,	`street_address`,	`number`,	`id_city`,	`longitude`,	`latitude`,	`zip_code`) values
(1,	'Rua Limoeiro',	1,	1,	38.711176,	-9.130618,	'1100-058'),
(2,	'R. de Belomonte ',	69,	2,	41.142522,	-8.616752,	'4050-556'),
(3,	'R. Teodoro ',	112,	5,	40.203004,	-8.413474,	'3000-331 '),
(4,	'R. Tomé de Barros Queirós ',	4,	6,	38.803478,	-9.380549,	'2710-624'),
(5,	'Av. Visc. de Valmor ',	61,	1,	38.73797,	-9.148117,	'1050-053'),
(6,	'R. Cova da Moura ',	1,	1,	38.705925,	-9.168058,	'1350-352'),
(7,	'R. Manuel Carqueja ',	61,	2,	41.160408,	-8.590101,	'4350-307'),
(8,	'R. Frederico Arouca ',	44,	3,	38.69897,	-9.419105,	'2750-303 '),
(9,	'R. Comendador Lino da Silva ',	43,	4,	38.523329,	-8.87604,	'2910-067'),
(10,	'R. Mãozinha ',	2,	5,	40.216493,	-8.404928,	'3000-137'),
(11,	'Praceta 25 de Abril ',	1,	6,	38.800304,	-9.376537,	'2710-716 '),
(12,	'Alameda dos Oceanos ',	45,	1,	38.764238,	-9.096257,	'1990-204 '),
(13,	'R. Sousa Aroso',	67,	2,	41.176487,	-8.690986,	'4450-208'),
(14,	'Av. Rei Humberto II de Itália ',	1407,	3,	38.693742,	-9.435089,	'2750-374'),
(15,	'Tv. Anunciada ',	12,	4,	38.521774,	-8.901259,	'2900-457 ');


insert into `order_status` (`id_order_status`,	`order_status`) values
(301,	'deliver ok'),
(302,	'deliver not ok'),
(303,	'deliver in progress ');

insert into `package` (`id_package`,	`package_type`) values
(401,	'tiny '),
(402,	'small '),
(403,	'medium '),
(404,	'large '),
(405,	'huge');

insert into `drivers` (`id_driver`,	`id_person`,	`NIF`,	`drivers_license`,	`type_of_vehicle`,	`id_location`,	`id_status`) values 
(1,	1,	2085811430,	12453423,	'bike',	1,	101),
(2,	2,	2085811499,	54453212,	'car',	2,	101),
(3,	3,	3071111522,	33453333,	'bike',	3,	101),
(4,	4,	1090011501,	12453222,	'car',	4,	101),
(5,	5,	5094441533,	62453211,	'bike',	5,	102);


insert into `customers` (`id_customer`,	`id_person`,	`id_location`,	`id_customers_status`) values
(1,	6,	6,	201),
(2,	7,	7,	201),
(3,	8,	8,	201),
(4,	9,	9,	201),
(5,	10,	10,	201),
(6,	11,	11,	201),
(7,	12,	12,	201),
(8,	13,	13,	201),
(9,	14,	14,	201),
(10,15,	15,	201);


insert into `orders` (`id_orders`,	`id_driver`,	`id_customer`,	`id_location_pickup`,	`id_location_delivery`,	`distance_KM`,	`price_delivery`,	`id_package`,	`drivers_fee`,	`id_person_pickup`,	`id_person_delivery`,	`rating`,	`instructions`) values
(1,	1,	1,	6,	15,	49,	98,	401,	29.4,	6,	15,	4,	'Go to the adreess in lisbon and delivery it in setubal'),
(2,	2,	2,	7,	14,	347,	694,	402,	208.2,	7,	14,	4,	'Be carfull with the package, its fragile'),
(3,	4,	3,	8,	13,	350,	700,	403,	210,	8,	13,	4,	'Deliver'),
(4,	1,	4,	9,	12,	48,	96,	404,	28.8,	9,	12,	4,	'Hello thanks for help me in this delivery'),
(5,	3,	5,	10,	11,	227,	454,	405,	136.2,	10,	11,	2,	'Go to coimbra in the adress indicated  talk to Marco, but be carfull. Deliver to Celine dion'),
(6,	4,	6,	11,	10,	226,	452,	404,	135.6,	11,	10,	5,	'Please go as fast as possible'),
(7,	1,	7,	12,	9,	47,	94,	405,	28.2,	12,	9,	5,	'Did it work?'),
(8,	2,	8,	13,	8,	347,	694,	402,	208.2,	13,	8,	1,	'Talk to cesar we will know what to do'),
(9,	4,	9,	14,	7,	344,	688,	403,	206.4,	14,	7,	5,	'In the pick up adress talk to Ronaldo, he will explain for you what to do. He is the BEST'),
(10,	1,	10,	15,	6,	48,	96,	401,	28.8,	15,	6,	4,	NULL),
(11,	1,	1,	6,	11,	33,	66,	402,	19.8,	6,	11,	2,	NULL),
(12,	2,	2,	7,	10,	125,	250,	403,	75,	7,	10,	2,	NULL),
(13,	4,	3,	8,	9,	71,	142,	404,	42.6,	8,	9,	3,	NULL),
(14,	1,	4,	9,	15,	4,	8,	405,	2.4,	9,	15,	4,	NULL),
(15,	3,	5,	10,	14,	239,	478,	401,	143.4,	10,	14,	5,	NULL),
(16,	4,	6,	11,	13,	340,	680,	401,	204,	11,	13,	2,	NULL),
(17,	1,	7,	12,	10,	202,	404,	402,	121.2,	12,	10,	3,	NULL),
(18,	2,	8,	13,	8,	347,	694,	403,	208.2,	13,	8,	5,	NULL),
(19,	4,	9,	14,	7,	344,	688,	404,	206.4,	14,	7,	2,	NULL),
(20,	1,	10,	15,	6,	48,	96,	405,	28.8,	15,	6,	2,	NULL);


insert into `order_log` (`id_order_log`,	`status_time`,	`status_date`,	`id_order`,	`id_order_status`,	`id_city`) values 
(1,	'10:13:00 ',	'2020-02-22',	1,	303,	1),
(2,	'12:40:00 ',	'2020-02-22',	1,	301,	4),
(3,	'11:12:00 ',	'2020-12-08',	2,	303,	2),
(4,	'15:01:00 ',	'2020-12-08',	2,	301,	3),
(5,	'12:50:00 ',	'2021-10-01',	3,	303,	3),
(6,	'17:11:00 ',	'2021-10-01',	3,	301,	2),
(7,	'06:19:00 ',	'2021-03-09',	4,	303,	4),
(8,	'07:59:00 ',	'2021-03-09',	4,	301,	1),
(9,	'08:40:00 ',	'2021-12-06',	5,	303,	5),
(10,	'11:09:00 ',	'2021-12-06',	5,	301,	6),
(11,	'12:00:00 ',	'2021-03-08',	6,	303,	6),
(12,	'15:00:00 ',	'2021-03-08',	6,	301,	5),
(13,	'07:33:00 ',	'2021-01-23',	7,	303,	1),
(14,	'09:00:00 ',	'2021-01-23',	7,	301,	4),
(15,	'06:29:00 ',	'2021-09-16',	8,	303,	2),
(16,	'11:43:00 ',	'2021-09-16',	8,	301,	3),
(17,	'07:02:00 ',	'2021-11-08',	9,	303,	3),
(18,	'12:44:00 ',	'2021-11-08',	9,	301,	2),
(19,	'13:44:00 ',	'2021-10-23',	10,	303,	4),
(20,	'16:00:00 ',	'2021-10-23',	10,	301,	1),
(21,	'09:28:00 ',	'2020-10-08',	11,	303,	1),
(22,	'10:28:00 ',	'2020-10-08',	11,	301,	6),
(23,	'14:55:00 ',	'2020-05-21',	12,	303,	2),
(24,	'19:33:00 ',	'2020-05-21',	12,	301,	5),
(25,	'18:00:00 ',	'2020-06-12',	13,	303,	3),
(26,	'20:11:00 ',	'2020-06-12',	13,	301,	4),
(27,	'14:05:00 ',	'2020-08-14',	14,	303,	4),
(28,	'14:50:00 ',	'2020-08-14',	14,	301,	4),
(29,	'06:09:00 ',	'2020-06-18',	15,	303,	5),
(30,	'10:00:00 ',	'2020-06-18',	15,	301,	3),
(31,	'12:32:00 ',	'2020-07-06',	16,	303,	6),
(32,	'19:00:00 ',	'2020-07-06',	16,	301,	2),
(33,	'11:37:00 ',	'2020-09-09',	17,	303,	1),
(34,	'15:22:00 ',	'2020-09-09',	17,	301,	5),
(35,	'17:01:00 ',	'2020-10-15',	18,	303,	2),
(36,	'21:09:00 ',	'2020-10-15',	18,	301,	3),
(37,	'11:43:00 ',	'2020-11-11',	19,	303,	3),
(38,	'16:49:00 ',	'2020-11-11',	19,	301,	2),
(39,	'20:21:00 ',	'2020-12-25',	20,	303,	4),
(40,	'22:28:00 ',	'2020-12-25',	20,	301,	1);











