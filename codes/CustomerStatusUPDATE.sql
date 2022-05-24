CREATE DEFINER=`root`@`localhost` TRIGGER `people_AFTER_UPDATE` AFTER UPDATE ON `people` FOR EACH ROW BEGIN
IF OLD.id_person in (
            select c.id_person
            From customers c
            where (OLD.id_person = c.id_person)
        )
THEN
	IF OLD.first_name is not null and
	   OLD.last_name is not null and
       OLD.date_of_birth is not null and
       OLD.date_registration is not null
	THEN
	   UPDATE  customers
       SET customers.id_customers_status = 201
       WHERE customers.id_person = old.id_person;
	ELSE
		UPDATE  customers
       SET customers.id_customers_status = 202
       WHERE customers.id_person = old.id_person;
	END IF;
END IF;
END