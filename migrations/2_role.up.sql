CREATE TABLE IF NOT EXISTS role (
    id INTEGER NOT NULL AUTO_INCREMENT KEY,
    role_name VARCHAR (50),
    created_by VARCHAR(100),
    created_at DATETIME,
    updated_by VARCHAR(100),
    updated_at DATETIME
);