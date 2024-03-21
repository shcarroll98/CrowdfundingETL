SET search_path to crowdfunding_db_schema; 

CREATE TABLE category (
	category_id VARCHAR(200) PRIMARY KEY, 
	category_name VARCHAR(200) NOT NULL 
); 

CREATE TABLE subcategory (
	subcat_id VARCHAR(200) PRIMARY KEY,
	subcategory_name VARCHAR(200) NOT NULL
);

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY, 
	last_name VARCHAR(200),
	first_name VARCHAR(200),
	email VARCHAR(200)
	);
CREATE TABLE campaign (
	cf_id INT PRIMARY KEY, 
	contact_id INT,
	company_name VARCHAR(200),
	description VARCHAR(500),
	goal int NOT NULL,
	pledged int NOT NULL,
	outcome VARCHAR (200),
	backers_count INT NOT NULL,
	country VARCHAR (200),
	currency VARCHAR (200),
	launch_date DATE,
	end_date DATE, 
	category_id varchar (200),
	subcat_id varchar (200),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcat_id) REFERENCES subcategory(subcat_id)
	);