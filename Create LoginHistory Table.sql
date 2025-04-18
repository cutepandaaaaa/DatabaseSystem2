CREATE TABLE LoginHistory (
loginHistoryID INT AUTO_INCREMENT,
userID INT,
loginTime DATETIME NOT NULL,
LogoutTime DATETIME,
ipAddress VARCHAR(45) NOT NULL,
PRIMARY KEY (loginHistoryID),
FOREIGN KEY (userID) REFERENCES User(userID),
CHECK (logoutTime IS NULL OR logoutTime > loginTime)
);