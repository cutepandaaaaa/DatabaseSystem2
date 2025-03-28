INSERT INTO User (username, email, firstName, lastName, phone, createdDate, block, street,  unit, postalCode, passwordHash)
VALUES 
    ('john_tan', 'john.tan@gmail.com', 'John', 'Tan', '88996473', '2025-01-01 10:00:00', '12','Jurong Ave 1', '01-101', '12345', 'hashed_password_1'),
    ('jane_lee', 'jane.lee@gmail.com', 'Jane', 'Lee', '88110011', '2024-12-15 14:30:00', '456', 'Jurong Ave 5', '02-202', '67890', 'hashed_password_2'),
    ('mike_lee', 'mike.lee@gmail.com', 'Mike', 'Lee', '99110011', '2025-02-10 11:20:00', '789', 'Clementi Ave 3', '03-303', '11223', 'hashed_password_3'),
    ('lisa_sim', 'lisa.sim@gmail.com', 'Lisa', 'Sim', '90112345', '2025-03-01 12:45:00', '321' , 'Joo Koon Ave 1', '04-404', '44556', 'hashed_password_4'),
    ('david_ng', 'david.ng@gmail.com', 'David', 'Ng', '93129870', '2024-11-21 09:10:00', NULL , 'Seletar Road', '05-505', '77889', 'hashed_password_5');
