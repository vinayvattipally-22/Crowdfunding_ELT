-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/gHsfjL
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- DB schema for the crowdfunding db

CREATE TABLE "Contacts" (
    "contact_id" Integer   NOT NULL,
    "first_name" String(255)   NOT NULL,
    "last_name" String(255)   NOT NULL,
    "email" String(255)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Category" (
    "category_id" String(10)   NOT NULL,
    "category" String(255)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_id" String(10)   NOT NULL,
    "subcategory" String(255)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" Integer   NOT NULL,
    "contact_id" Integer   NOT NULL,
    "company_name" String(255)   NOT NULL,
    "description" String(255)   NOT NULL,
    "goal" Float   NOT NULL,
    "pledged" Float   NOT NULL,
    "outcome" String(30)   NOT NULL,
    "backers_count" Integer   NOT NULL,
    "country" String(2)   NOT NULL,
    "currency" String(3)   NOT NULL,
    "launch_date" Date   NOT NULL,
    "end_date" Date   NOT NULL,
    "category_id" String(10)   NOT NULL,
    "subcategory_id" String(10)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");
