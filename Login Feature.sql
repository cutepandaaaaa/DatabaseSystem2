-- Insert into SessionToken table for the new login session
INSERT INTO SessionToken (userID, token, expiryTime, issuedAt)
VALUES 
    (1, 'new_session_token_12345', DATE_ADD(NOW(), INTERVAL 1 HOUR), NOW());

-- Insert into LoginHistory table for the new login event
INSERT INTO LoginHistory (userID, loginTime, logoutTime, ipAddress)
VALUES
    (1, NOW(), NULL, '192.168.1.1');
