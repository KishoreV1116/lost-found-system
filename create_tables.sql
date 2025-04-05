-- Create users table
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15)
);

-- Create items table
CREATE TABLE items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(100),
    description TEXT,
    category VARCHAR(50),
    image_url VARCHAR(255),
    status VARCHAR(10),  -- Use values like 'Lost', 'Found', 'Claimed'
    reported_by INT,
    report_date DATE,
    FOREIGN KEY (reported_by) REFERENCES users(user_id)
);

-- Create matches table
CREATE TABLE matches (
    match_id INT AUTO_INCREMENT PRIMARY KEY,
    lost_item_id INT,
    found_item_id INT,
    match_score FLOAT,
    status VARCHAR(10),  -- Use values like 'Pending', 'Approved', 'Rejected'
    FOREIGN KEY (lost_item_id) REFERENCES items(item_id),
    FOREIGN KEY (found_item_id) REFERENCES items(item_id)
);
