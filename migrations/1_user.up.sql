CREATE TABLE IF NOT EXISTS user (
    id INTEGER NOT NULL AUTO_INCREMENT KEY,
    role_id INTEGER,
    user_image_path VARCHAR (250),
    first_name VARCHAR (100),
    second_name VARCHAR (100),
    email VARCHAR (30) UNIQUE,
    password VARCHAR (30),
    phone_number VARCHAR (20),
    address VARCHAR (250),
    created_by VARCHAR(100),
    created_at DATETIME,
    updated_by VARCHAR(100),
    updated_at DATETIME
);