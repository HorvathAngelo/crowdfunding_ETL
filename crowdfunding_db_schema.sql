-- Create the 'category' table
CREATE TABLE category (
    category_id SERIAL PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

-- Create the 'subcategory' table
CREATE TABLE subcategory (
    subcategory_id SERIAL PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);

-- Create the 'contact_info' table
CREATE TABLE contact_info (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) UNIQUE NOT NULL
);

-- Create the 'campaign' table with correct relationships
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
    category_id INT,
    subcategory_id INT,
    launch_date DATE,
    end_date DATE,
    FOREIGN KEY (contact_id) REFERENCES contact_info(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
