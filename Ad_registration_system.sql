create table organizations(
	Org_id varchar(20) primary key,
	Org_name varchar(20),
	Per_ad_charge numeric
);

create table label(
	Label_id varchar(20) primary key,
	Label_name varchar(50)
);

create table ad(
	Ad_id varchar(20) primary key,
	Org_id varchar(20) references organizations(Org_id),
	Visit_count int,
	Total_budget numeric
);

create Table ad_label_mapping (
	Ad_id varchar(20) references ad(Ad_id),
	Label_id varchar(20) references label(Label_id));

create Table customers (
	customer_id varchar(20) primary key,
	customer_name varchar(20),
	gender varchar(20));

create Table customer_label_mapping (
	customer_id varchar(20) references customers(customer_id),
	Label_id varchar(20) references label(Label_id),
	percentage numeric);

create Table ad_blocked (
	Customer_id varchar(20) references customers(customer_id),
	Ad_id varchar(20) references ad(Ad_id));


insert into Organizations values('A', 'Adobe', 100);
insert into Customers values('a', 'Amit', 'Female');
insert into Label values('1', 'horror');
insert into ad values('A1', 'A', 0, 1000);
insert into ad_label_mapping values('A1', '1');
insert into Ad_blocked values('a', 'A1');
insert into Customer_label_mapping values('a', '1', 3);


insert into Organizations values('B', 'Arista', 200);
insert into Customers values('b', 'Manit', 'male');
insert into Label values('2', 'sport');
insert into ad values('A2', 'B', 3, 5000);
insert into ad_label_mapping values('A2', '1');
insert into Ad_blocked values('b', 'A2');
insert into Customer_label_mapping values('b', '2', 15);

