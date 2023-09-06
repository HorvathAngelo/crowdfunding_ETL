Step 1: Create the Category and Subcategory DataFrames
We extracted data from the crowdfunding.xlsx Excel file to create a category DataFrame.

The category DataFrame had columns for "category_id" and "category."

We exported this DataFrame as category.csv.

We also extracted data from the same Excel file to create a subcategory DataFrame.

The subcategory DataFrame had columns for "subcategory_id" and "subcategory."

We exported this DataFrame as subcategory.csv.

Step 2: Create the Campaign DataFrame
We extracted data from the crowdfunding.xlsx Excel file to create a campaign DataFrame.
The campaign DataFrame had columns like "cf_id," "contact_id," "company_name," "description," "goal," "pledged," "outcome," "backers_count," "country," "currency," "launch_date," "end_date," "category_id," and "subcategory_id."
We converted data types, renamed columns, and performed data cleaning as necessary.
We exported this DataFrame as campaign.csv.
Step 3: Create the Contacts DataFrame
We imported data from the contacts.xlsx Excel file into a DataFrame.
We chose Option 2, using regular expressions, to extract "contact_id," "name," and "email" columns.
We converted the "contact_id" column to an integer type and split the "name" column into first and last names.
We exported this DataFrame as contacts.csv.
Step 4: Create the Crowdfunding Database
We sketched an Entity-Relationship Diagram (ERD) for the tables in QuickDBD.

Using the ERD, we created a table schema for each CSV file, specifying data types, primary keys, foreign keys, and other constraints.

We saved the database schema as crowdfunding_db_schema.sql.

We created a new Postgres database named crowdfunding_db.

Using the database schema, we created the tables in the correct order to handle foreign keys.

We imported each CSV file into its corresponding SQL table.

We verified that each table had the correct data by running SELECT statements for each.

In summary, we successfully extracted data from Excel files, transformed it into DataFrames, and organized it into a relational database using PostgreSQL. This allowed us to create a Crowdfunding Database with structured and normalized data.
