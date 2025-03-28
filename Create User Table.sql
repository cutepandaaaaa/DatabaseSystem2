CREATE TABLE User (
    userID INT AUTO_INCREMENT PRIMARY KEY,      -- Primary key, auto-incrementing ID for the user
    username VARCHAR(255) NOT NULL UNIQUE,      -- Username, must be unique and not null
    email VARCHAR(255) NOT NULL UNIQUE,         -- Email, must be unique and not null
    firstName VARCHAR(255) NOT NULL,            -- First name, required field
    lastName VARCHAR(255) NOT NULL,             -- Last name, required field
    phone VARCHAR(20) NOT NULL UNIQUE,          -- Phone number, must be unique and not null
    createdDate DATETIME NOT NULL,              -- Account creation date, required field
	block VARCHAR(50),                          -- Block (optional field)
    street VARCHAR(255) NOT NULL,               -- Street address, required field
    unit VARCHAR(50) NOT NULL,                  -- Unit number, required field
    postalCode VARCHAR(10) NOT NULL,            -- Postal code, required field
    passwordHash VARCHAR(255) NOT NULL              -- Password, required field
);