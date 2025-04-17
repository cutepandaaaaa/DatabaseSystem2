-- Update LoginHistory table to set logoutTime
UPDATE LoginHistory
SET logoutTime = NOW()
WHERE userID = 5 AND logoutTime IS NULL;

-- Expire the SessionToken by updating its expiryTime
UPDATE SessionToken
SET expiryTime = NOW()   -- Expiring the session immediately
WHERE userID = 5 AND expiryTime > NOW();  -- Ensure only active sessions are updated
