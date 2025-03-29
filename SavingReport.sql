SELECT 
    U.userID,
    U.email,
    SUM((UO.grossAmount * V.discountPercent) / 100) AS totalSavings
FROM UserOrder UO
JOIN UserOrderVoucher UOV ON UO.userOrderID = UOV.userOrderID
JOIN Voucher V ON UOV.voucherID = V.voucherID
JOIN User U ON UO.userID = U.userID
WHERE UO.orderDate >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
AND UO.status = 'Completed'
GROUP BY U.userID, U.email;
