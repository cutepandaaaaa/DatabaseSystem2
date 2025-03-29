INSERT INTO Review (userID, productID, orderID, rating, comment, createAt, image) 
VALUES 
(1, 5, 20, 4, 'Great product! Fast delivery.', NOW(), 'review1.jpg');


DELIMITER //

CREATE TRIGGER before_insert_review
BEFORE INSERT ON Review
FOR EACH ROW
BEGIN
    DECLARE purchase_count INT;

    -- Check if the user has purchased the product
    SELECT COUNT(*) INTO purchase_count 
    FROM OrderItem oi
    JOIN UserOrder uo ON oi.orderID = uo.userOrderID
    WHERE uo.userID = NEW.userID AND oi.productID = NEW.productID;

    -- If the user has not purchased the product, prevent the review
    IF purchase_count = 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Error: You can only review products you have purchased.';
    END IF;
END;
//

DELIMITER ;
