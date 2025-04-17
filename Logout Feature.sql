UPDATE LoginHistory
SET logoutTime = NOW()
WHERE userID = 5 AND logoutTime IS NULL;

UPDATE SessionToken
SET expiryTime = NOW()   -- Expiring the session immediately
WHERE userID = 5 AND expiryTime > NOW();  -- Ensure only active sessions are updated
