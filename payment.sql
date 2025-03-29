-- Start Transaction
START TRANSACTION;

-- Insert Payment Record
INSERT INTO Payment (userID, paymentMethod, transactionID, amount, status, paymentDate)
VALUES (1, 'Credit Card', 'TXN123456', 120.50, 'Pending', NOW());

-- Get Last Inserted Payment ID
SET @lastPaymentID = LAST_INSERT_ID();

-- Update Order with Payment ID
UPDATE UserOrder 
SET paymentID = @lastPaymentID, status = 'Processing'
WHERE userID = 1 AND status = 'Pending';

-- Check if both queries executed successfully
IF ROW_COUNT() = 0 THEN
    -- Rollback if update fails
    ROLLBACK;
    SELECT 'Transaction Failed - Payment Not Processed' AS Message;
ELSE
    -- Commit the transaction if all queries succeed
    COMMIT;
    SELECT 'Transaction Successful - Payment Processed' AS Message;
END IF;
