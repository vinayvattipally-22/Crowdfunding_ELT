--- Drop tables if exists.
DROP TABLE Contacts;
DROP TABLE Category;
DROP TABLE Subcategory;
DROP TABLE Campaign;
CREATE TABLE Contacts (
    "contact_id" integer PRIMARY KEY NOT NULL,
    "first_name" varchar(255)   NOT NULL,
    "last_name" varchar(255)   NOT NULL,
    "email" varchar(255)   NOT NULL
    );

CREATE TABLE Category (
    "category_id" varchar(10) PRIMARY KEY  NOT NULL,
    "category" varchar(255)   NOT NULL
    );

CREATE TABLE Subcategory (
    "subcategory_id" varchar(10) PRIMARY KEY  NOT NULL,
    "subcategory" varchar(255)   NOT NULL
    );

CREATE TABLE Campaign (
    "cf_id" integer PRIMARY KEY  NOT NULL,
    "contact_id" integer NOT NULL,
    "company_name" varchar(255)   NOT NULL,
    "description" varchar(255)   NOT NULL,
    "goal" float   NOT NULL,
    "pledge" float   NOT NULL,
    "outcome" varchar(15)   NOT NULL,
    "backers_count" integer   NOT NULL,
    "country" varchar(255)   NOT NULL,
    "currency" varchar(10)   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(10) NOT NULL,
    "subcategory_id" varchar(10) NOT NULL,
	FOREIGN KEY(contact_id) REFERENCES Contacts("contact_id"),
	FOREIGN KEY("category_id") REFERENCES Category("category_id"),
	FOREIGN KEY("subcategory_id") REFERENCES Subcategory("subcategory_id")
	
);