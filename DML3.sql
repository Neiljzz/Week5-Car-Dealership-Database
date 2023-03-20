--customer info
insert into customer(first_name, last_name, email, phone, address)
values ('Zahra','Jackboson','zahrajackboson@gmail.com','617-909-9437','123 real street'),
	   ('Dori','fish','dorifish@gmail.com','826-909-2578','143 real street');

		
create or replace procedure add_customer(
	first_name varchar(50),
	last_name varchar(50),
	email varchar(100),
	phone varchar(20),
	address varchar(100)
	)
LANGUAGE plpgsql
as $$
begin
	insert into customer(first_name, last_name, email, phone, address)
	values (first_name, last_name, email, phone, address);
end;
$$;
CALL add_customer('Tom', 'Cruise','tomcruise@gmail.com','123-456-7890','456 fake street');
CALL add_customer('Jenny', 'Lu','jennylu@gmail.com','213-435-5467','546 fake street');
CALL add_customer('Mike', 'William','mikewilliam@gmail.com','927-565-4728','546 fake street');

--salesperson info
insert into salesperson(first_name, last_name, email, phone)
values ('Miya','Osaki','miyaosaki@gmail.com','123-322-9467'),
	   ('Jimmy','Su','jimmysu.com','826-909-2578');

create or replace procedure add_salesperson(
	first_name varchar(50),
	last_name varchar(50),
	email varchar(100),
	phone varchar(20)
	)
LANGUAGE plpgsql
as $$
begin
	insert into salesperson(first_name, last_name, email, phone)
	values (first_name, last_name, email, phone);
end;
$$;
CALL add_salesperson('Tom', 'Cat','tomcat@gmail.com','123-456-7890');
CALL add_salesperson('Jerry', 'Mouse','jerrymouse@gmail.com','213-435-5467');


--car info
insert into car(car_maker, car_mode, car_year, car_price)
values ('Audi','Q5','2015','35000'),
	   ('Benz','C63','2017','37000');

create or replace procedure add_car(
	car_maker varchar(50),
	car_mode varchar(50),
	car_year int,
	car_price decimal(10,2)
	)
LANGUAGE plpgsql
as $$
begin
	insert into car(car_maker, car_mode, car_year, car_price)
	values (car_maker, car_mode, car_year, car_price);
end;
$$;
CALL add_car('Audi', 'SQ5','2020','47000');
CALL add_car('BMW', 'i8','2022','101000.21');
	  

--invoice info
insert into invoice(invoice_time, car_id, salesperson_id)
values (Now(), 1, 1),
	   ('2017-07-23',2,2);
	  
create or replace procedure add_invoice(
	invoice_time varchar(50),
	car_id int,
	salesperson_id int
	)
LANGUAGE plpgsql
as $$
begin
	insert into invoice(invoice_time, car_id, salesperson_id)
	values (invoice_time, car_id, salesperson_id);
end;
$$;
CALL add_invoice(now(), 1, 1);
CALL add_invoice('2012-03-13',2,2);

--service info
insert into service(service_price, service_type, service_time, car_id)
values (1000, 'enigne oil change', now(), 2),
	   (1500, 'car wash', now(), 1);
	  
create or replace procedure add_service(
	service_price decimal(10,2),
	service_type varchar(30),
	service_time timestamp,
	car_id int
	)
LANGUAGE plpgsql
as $$
begin
	insert into service(service_price, service_type, service_time, car_id)
	values (service_price, service_type, service_time, car_id);
end;
$$;
CALL add_service(1200, 'car wash', now(), 1);
CALL add_service(1300, 'car wash','2018-09-12', 2);

--mechanic
insert into mechanic(first_name, last_name, phone)
values ('Neil', 'Jia', '123-123-1234'),
	   ('Jenny', 'Lu', '123-123-1234');

create or replace procedure add_mechanic(
	first_name varchar(50),
	last_name varchar(50),
	phone varchar(20)
	)
LANGUAGE plpgsql
as $$
begin
	insert into mechanic(first_name, last_name, phone)
	values (first_name, last_name, phone);
end;
$$;
CALL add_mechanic('Tom', 'Cat','123-456-7890');
CALL add_mechanic('Jerry', 'Mouse','213-435-5467');


--mechainc_service
insert into mechanic_service(service_id, mechanic_id)
values (1,1),
	   (2,2);

create or replace procedure add_mechanic_service(
	service_id int,
	mechanic_id int
	)
LANGUAGE plpgsql
as $$
begin
	insert into mechanic_service(service_id, mechanic_id)
	values (service_id, mechanic_id);
end;
$$;
CALL add_mechanic_service(1,2);
CALL add_mechanic_service(1,2);


	  
	  
