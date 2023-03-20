create table salesperson(
	salesperson_id serial primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	email varchar(100) not null,
	phone varchar(20)
	);
	
create table customer(
	customer_id serial primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	email varchar(100) not null,
	phone varchar(20),
	address varchar(100)
	);
	
create table car(
	car_id serial primary key,
	car_maker varchar(50) not null,
	car_mode varchar(50) not null,
	car_year int,
	car_price decimal(10,2),
	customer_id int,
	foreign key (customer_id) references "customer"(customer_id)
	);
	
create table invoice(
	invoice_id serial primary key,
	invoice_time timestamp,
	car_id int,
	salesperson_id int not null,
	foreign key (car_id) references "car"(car_id),
	foreign key (salesperson_id) references "salesperson" (salesperson_id)
	);

create table service(
	service_id serial primary key,
	service_price decimal(10,2),
	service_type varchar(30) not null,
	service_time timestamp,
	car_id int,
	foreign key (car_id) references "car"(car_id)
	);

create table mechanic(
	mechanic_id serial primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	phone varchar(50) not null
	);


create table mechanic_service(
	mechanic_service_id serial primary key,
	service_id int,
	mechanic_id int,
	foreign key (service_id) references "service" (service_id),
	foreign key (mechanic_id) references "mechanic" (mechanic_id)
	);





	
	
	
	
	
	
	