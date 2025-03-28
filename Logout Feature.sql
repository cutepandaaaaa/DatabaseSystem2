-- Update LoginHistory table to set logoutTime
UPDATE LoginHistory
SET logoutTime = NOW()
WHERE userID = 1 AND logoutTime IS NULL;

-- Optionally, expire the SessionToken by updating its expiryTime
UPDATE SessionToken
SET expiryTime = NOW()   -- Expiring the session immediately
WHERE userID = 1 AND expiryTime > NOW();  -- Ensure only active sessions are updated
