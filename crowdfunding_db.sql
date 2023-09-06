-- Create the 'contact_info' table
CREATE TABLE contact_info (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) UNIQUE NOT NULL
);

-- Verify 'contact_info' table
SELECT * FROM contact_info;

-- Create the 'category' table
CREATE TABLE category (
    category_id SERIAL PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

-- Verify 'category' table
SELECT * FROM category;


-- Create the 'subcategory' table
CREATE TABLE subcategory (
    subcategory_id SERIAL PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);


-- Verify 'subcategory' table
SELECT * FROM subcategory;


-- Create the 'campaign' table with foreign key reference
CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT NOT NULL,
    description TEXT,
    goal DECIMAL(10, 2),
    pledged DECIMAL(10, 2),
    outcome VARCHAR(255),
    backers_count INT,
    country VARCHAR(255),
    currency VARCHAR(255),
    staff_pick BOOLEAN,
    spotlight BOOLEAN,
    category_subcategory VARCHAR(255),
    launch_date DATE,
    end_date DATE,
    FOREIGN KEY (contact_id) REFERENCES contact_info(contact_id)
);

-- Import 'category.csv' into the 'category' table
COPY category FROM 'C:\Users\Administrator\Downloads\Starter_Files\category.csv' DELIMITER ',' CSV HEADER;

-- Verify data in 'category' table
SELECT * FROM category;

-- Import 'subcategory.csv' into the 'subcategory' table
COPY subcategory FROM 'C:\Users\Administrator\Downloads\Starter_Files\subcategory.csv' DELIMITER ',' CSV HEADER;

-- Verify data in 'subcategory' table
SELECT * FROM subcategory;

-- Import 'campaign.csv' into the 'campaign' table
COPY campaign FROM 'C:\Users\Administrator\Downloads\Starter_Files\campaign.csv' DELIMITER ',' CSV HEADER;

-- Verify data in 'campaign' table
SELECT * FROM campaign;

-- Import 'contact_info.csv' into the 'contact_info' table
COPY contact_info FROM 'C:\Users\Administrator\Downloads\Starter_Files\contact_info.csv' DELIMITER ',' CSV HEADER;

-- Verify data in 'contact_info' table
SELECT * FROM contact_info;