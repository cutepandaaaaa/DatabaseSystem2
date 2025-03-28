CREATE TABLE SessionToken (
sessionTokenID INT AUTO_INCREMENT,
userID INT,
token VARCHAR(255) UNIQUE NOT NULL,
expiryTime DATETIME NOT NULL,
issuedAt DATETIME NOT NULL,
PRIMARY KEY (sessionTokenID),
FOREIGN KEY (userID) REFERENCES User(userID),
CHECK (expiryTime > issuedAt)
);