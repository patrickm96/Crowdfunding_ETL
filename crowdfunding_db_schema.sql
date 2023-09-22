
create table category (
	category_id varchar primary key,
	category varchar
);


create table contacts (
	contact_id int primary key,
	first_name varchar,
	last_name varchar,
	email varchar
);

create table subcategory (
	subcategory_id varchar primary key,
	subcategory varchar
);


create table campaign (
	cf_id int primary key,
	contact_id int,
	company_name varchar,
	description varchar,
	goal double precision,
	pledged double precision,
	outcome varchar,
	backers_count int,
	country varchar,
	currency varchar,
	launched_date date not null,
	end_date date not null check(end_date>=launched_date), 
	category_id varchar,
	subcategory_id varchar,
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id)
);

ALTER TABLE category ADD CONSTRAINT unique_category_names UNIQUE (category);
ALTER TABLE subcategory ADD CONSTRAINT unique_subcategory_names UNIQUE (subcategory);

select * from campaign 
select * from subcategory
select * from contacts
select * from category



	