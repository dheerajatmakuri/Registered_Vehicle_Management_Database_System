CREATE DATABASE Registered_Vehicle_Management_System;


USE Registered_Vehicle_Management_System;

SELECT DATABASE();

#Table-1 Vehicles Table

CREATE TABLE Vehicles (
    VehicleID INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17) UNIQUE NOT NULL,
    LicensePlate VARCHAR(10) UNIQUE NOT NULL,
    Make VARCHAR(50),
    Model VARCHAR(50),
    Year YEAR,
    Color VARCHAR(30),
    Vehicle_Type VARCHAR(50)
);

INSERT INTO Vehicles (VIN, LicensePlate, Make, Model, Year, Color, Vehicle_Type) VALUES 
('JH4TB2H26FF000001', '1ZVBA8AM', 'Acura', 'TL', '2012', 'Silver', 'Sedan'),
('JH4TB2H26CC000001', '1ZVBP8AM', 'Acura', 'TL', '2012', 'Silver', 'Sedan'),
('1G1ZE5ST6GF000002', '3FA6P0LU', 'Chevrolet', 'Malibu', '2016', 'Blue', 'Sedan'),
('1N4AL3AP0DC000003', '5NPDH4AE', 'Nissan', 'Altima', '2013', 'Black', 'Sedan'),
('19UUA8F50DA000004', 'KMHCT4AE', 'Acura', 'TLX', '2013', 'White', 'Sedan'),
('5J6RM4H74EL000005', 'JHMCR6F3', 'Honda', 'CR-V', '2014', 'Red', 'SUV'),
('JF1GPAA6XF8000006', '1G1PC5SB', 'Subaru', 'Impreza', '2015', 'Grey', 'Hatchback'),
('2GKFLVEK9F6000007', '2GNALBEK', 'GMC', 'Terrain', '2015', 'Green', 'SUV'),
('1G11C5SL0EF000008', 'KL8CB6SA', 'Chevrolet', 'Cruze', '2014', 'Orange', 'Sedan'),
('KM8JU3AC9DU000009', '5XYZT3LB', 'Hyundai', 'Tucson', '2013', 'Brown', 'SUV'),
('3FA6P0H74ER000010', '1FAHP2E8', 'Ford', 'Fusion', '2014', 'Yellow', 'Sedan'),
('2C4RDGBG9ER000011', '2C4GP443', 'Dodge', 'Grand Caravan', '2014', 'Purple', 'Minivan'),
('1FTFW1CT9EF000012', '1FTSX2B5', 'Ford', 'F-150', '2014', 'Maroon', 'Truck'),
('1GKS2HKC9FR000013', '3GTP2VE3', 'GMC', 'Yukon', '2015', 'Teal', 'SUV'),
('4T1BF1FK0EU000014', '4T1BK36B', 'Toyota', 'Camry', '2014', 'Lime Green', 'Sedan'),
('5XXGM4A70EG000015', '5XYKT3A6', 'Kia', 'Optima', '2014', 'Pink', 'Sedan'),
('JN8AS5MT5DW000016', 'JN8AZ1MU', 'Nissan', 'Rogue', '2013', 'Cyan', 'SUV'),
('KL1TD56698B000017', 'KL1CG566', 'Chevrolet', 'Aveo', '2008', 'Magenta', 'Sedan'),
('3N1AB6AP7BL000018', '3N1CN7AP', 'Nissan', 'Sentra', '2011', 'Cream', 'Sedan'),
('2HGFG4A59CH000019', '2HGFB2F5', 'Honda', 'Civic', '2012', 'Sapphire', 'Coupe'),
('1VWAP7A33CC000020', '1VWAT7A3', 'Volkswagen', 'Passat', '2012', 'Charcoal', 'Sedan'),
('4S3BMCA65D3000021', '4S4BRBAC', 'Subaru', 'Legacy', '2013', 'Ivory', 'Sedan'),
('JTDKN3DU5A0000022', 'JTDKDTB3', 'Toyota', 'Prius', '2010', 'Mint Green', 'Hatchback'),
('KMHDH4AE3FU000023', 'KMHCTA4E', 'Hyundai', 'Elantra', '2015', 'Lavender', 'Sedan'),
('4T1BE32K65U100024', 'JKL678', 'Toyota', 'Camry', '2005', 'Green', 'Sedan'),
('5N1ED28Y01C100025', 'MNO012', 'Nissan', 'Xterra', '2001', 'Grey', 'Sedan'),
('EN8FARFJATGUCYZFA', 'NS832EJ', 'Honda', 'Civic', '2018', 'Grey', 'SUV'),
('XPH436FHU3XUWXEDC', 'NCILDZM', 'Audi', 'A4', '2010', 'Silver', 'Wagon'),
('XGUSGLW175YLES848', 'XWC4RTW', 'Saturn', 'S-Series', '1999', 'Black', 'Sedan'),
('EL8EN3Z3HHZJDGMZ9', 'A2M0W10', 'Subaru', 'Outback', '2002', 'White', 'Sedan'),
('JU6SFPMT3SFA272XH', '9TJ1GM2', 'Ford', 'Explorer', '1999', 'Black', 'Sedan'),
('TEDFYB6PCT93EEZ6A', 'DLKQZFP', 'Audi', 'A4', '2005', 'Green', 'SUV'),
('Z9ZY3MCTNY5LT23SC', 'NUVY8N1', 'Ford', 'Focus', '1996', 'Silver', 'Wagon'),
('DM84RGDJ99FZAXG4V', 'Q6QDY4L', 'Subaru', 'Outback', '1999', 'Yellow', 'Sedan'),
('JWVPXMTH475T1JCTJ', 'WDL9ZS1', 'Chevrolet', 'Malibu', '2017', 'Red', 'Wagon'),
('MFNCWSM6YEX2456BP', 'M764JWT', 'Subaru', 'Outback', '1997', 'White', 'Sedan'),
('JH6Y5NRLUKU12MKMS', 'OXRWK8R', 'Saturn', 'S-Series', '2015', 'Green', 'Wagon'),
('32FG7LBPRVZ5CJBF9', 'IDKNWI5', 'Mercedes-Benz', 'C-Class', '2007', 'Green', 'Truck'),
('SGHGA1YHY7C2GWMGJ', '4P501NO', 'Honda', 'Civic', '2005', 'Silver', 'Coupe'),
('J3HS9ZN4ZDTBYS7HH', 'BELRQVS', 'Subaru', 'Outback', '2012', 'Blue', 'Sedan'),
('DLUKHHGKG1B4EAWVM', 'VJX8UIB', 'Ford', 'Explorer', '2014', 'Silver', 'Coupe'),
('RSDU8KP7FEE7HLGVR', 'ZSU9RN8', 'Toyota', 'Camry', '2000', 'Yellow', 'Hatchback'),
('CSRMPL78J8ZAA7PBC', '72JEYN9', 'Ford', 'Focus', '2012', 'Silver', 'Wagon'),
('2Y3XMR7U9J94R82W8', 'IDLRYE8', 'Chevrolet', 'Malibu', '2019', 'White', 'Sedan'),
('MSAA2SM8RV2XEUX2U', '2G05KBK', 'Honda', 'Civic', '2008', 'Grey', 'Truck'),
('FMHW5H9TBRMP1BAN7', 'VWOPLOD', 'BMW', '3 Series', '1998', 'Silver', 'Sedan'),
('1DF9BKK9C8NF6NXWS', 'YW7NH8R', 'Saturn', 'S-Series', '2010', 'Silver', 'Coupe'),
('PXSTUSNLTHHCX4UW7', 'TF4PYZR', 'Ford', 'Focus', '2018', 'Silver', 'Truck'),
('5EKJNA19173EPJ2WZ', 'QKGEX08', 'Nissan', 'Xterra', '2009', 'Black', 'Truck'),
('DNNJMC6JHR811ANJJ', '3IMJ70E', 'Chevrolet', 'Malibu', '2007', 'Grey', 'Truck'),
('742LP2RD87V2HAURB', 'VYLKFXH', 'Mercedes-Benz', 'C-Class', '2008', 'Black', 'Coupe');


#Table-2 Owners Table
 
CREATE TABLE Owners (
    OwnerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Address VARCHAR(255),
    ZipCode VARCHAR(10),
    State VARCHAR(2),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    PurchaseDate DATE,
    SaleDate DATE
);

INSERT INTO Owners (FirstName, LastName, Address, ZipCode, State, PhoneNumber, Email, PurchaseDate, SaleDate) VALUES
('John', 'Doe', '123 Main St', '12345', 'CA', '555-123-4567', 'john.doe@example.com', '2023-01-15', NULL),
('Jane', 'Smith', '456 Elm St', '54321', 'NY', '555-987-6543', 'jane.smith@example.com', '2022-12-20', NULL),
('Michael', 'Johnson', '789 Oak St', '67890', 'TX', '555-567-8901', 'michael.j@example.com', '2023-02-28', NULL),
('Emily', 'Brown', '321 Pine St', '09876', 'FL', '555-234-5678', 'emily.brown@example.com', '2023-03-10', NULL),
('Christopher', 'Martinez', '654 Cedar St', '45678', 'CA', '555-789-0123', 'chris.m@example.com', '2023-04-05', NULL),
('Jessica', 'Taylor', '987 Birch St', '13579', 'NY', '555-345-6789', 'jessica.t@example.com', '2022-11-11', NULL),
('Matthew', 'Garcia', '741 Maple St', '98765', 'TX', '555-901-2345', 'matthew.g@example.com', '2023-05-20', NULL),
('Amanda', 'Rodriguez', '369 Walnut St', '54321', 'FL', '555-456-7890', 'amanda.r@example.com', '2023-06-08', NULL),
('David', 'Martinez', '147 Pineapple St', '24680', 'CA', '555-678-9012', 'david.m@example.com', '2023-07-14', NULL),
('Ashley', 'Lopez', '258 Orange St', '13579', 'NY', '555-123-4567', 'ashley.l@example.com', '2022-10-30', NULL),
('James', 'Hernandez', '369 Banana St', '98765', 'TX', '555-234-5678', 'james.h@example.com', '2023-08-22', NULL),
('Jennifer', 'Hernandez', '741 Coconut St', '45678', 'FL', '555-345-6789', 'jennifer.h@example.com', '2023-09-17', NULL),
('Daniel', 'Gonzalez', '123 Mango St', '12345', 'CA', '555-456-7890', 'daniel.g@example.com', '2023-10-05', NULL),
('Sarah', 'Perez', '456 Lemon St', '54321', 'NY', '555-567-8901', 'sarah.p@example.com', '2022-09-01', NULL),
('Robert', 'Sanchez', '789 Grape St', '13579', 'TX', '555-678-9012', 'robert.s@example.com', '2023-11-30', NULL),
('Samantha', 'Ramirez', '321 Peach St', '98765', 'FL', '555-789-0123', 'samantha.r@example.com', '2023-12-25', NULL),
('Joseph', 'Torres', '654 Cherry St', '24680', 'CA', '555-901-2345', 'joseph.t@example.com', '2022-08-11', NULL),
('Melissa', 'Flores', '987 Apple St', '45678', 'NY', '555-123-4567', 'melissa.f@example.com', '2024-01-18', NULL),
('Jason', 'Rivera', '147 Grapefruit St', '12345', 'TX', '555-234-5678', 'jason.r@example.com', '2023-02-14', NULL),
('Michelle', 'Gomez', '369 Blueberry St', '54321', 'FL', '555-345-6789', 'michelle.g@example.com', '2023-03-09', NULL),
('Kevin', 'Perez', '741 Kiwi St', '98765', 'CA', '555-456-7890', 'kevin.p@example.com', '2022-07-04', NULL),
('Kimberly', 'Diaz', '123 Raspberry St', '13579', 'NY', '555-567-8901', 'kimberly.d@example.com', '2024-02-22', NULL),
('Andrew', 'Lopez', '456 Strawberry St', '45678', 'TX', '555-678-9012', 'andrew.l@example.com', '2023-04-11', NULL),
('Stephanie', 'Martinez', '789 Blackberry St', '24680', 'FL', '555-789-0123', 'stephanie.m@example.com', '2023-05-05', NULL),
('Charles', 'Torres', '321 Cranberry St', '12345', 'CA', '555-901-2345', 'charles.t@example.com', '2023-06-30', NULL),
('Laura', 'Gonzalez', '654 Watermelon St', '54321', 'NY', '555-123-4567', 'laura.g@example.com', '2022-06-16', NULL),
('Ryan', 'Wilson', '987 Pear St', '98765', 'TX', '555-234-5678', 'ryan.w@example.com', '2023-07-12', NULL),
('Rebecca', 'Taylor', '147 Fig St', '13579', 'FL', '555-345-6789', 'rebecca.t@example.com', '2023-08-09', NULL),
('Eric', 'Lopez', '369 Pine St', '45678', 'CA', '555-456-7890', 'eric.l@example.com', '2024-03-17', NULL),
('Kelly', 'Martinez', '741 Olive St', '24680', 'NY', '555-567-8901', 'kelly.m@example.com', '2022-05-24', NULL),
('Gregory', 'Brown', '123 Walnut St', '12345', 'TX', '555-678-9012', 'gregory.b@example.com', '2023-10-28', NULL),
('Cynthia', 'Davis', '456 Chestnut St', '54321', 'FL', '555-789-0123', 'cynthia.d@example.com', '2023-11-15', NULL),
('Amy', 'Garcia', '789 Almond St', '98765', 'CA', '555-901-2345', 'amy.g@example.com', '2022-04-01', NULL),
('Brian', 'Martinez', '147 Hazelnut St', '24680', 'TX', '555-123-4567', 'brian.m@example.com', '2023-12-09', NULL),
('Emily', 'Anderson', '369 Pecan St', '12345', 'NY', '555-234-5678', 'emily.a@example.com', '2022-03-11', NULL),
('Justin', 'Martinez', '741 Walnut St', '98765', 'FL', '555-345-6789', 'justin.m@example.com', '2023-01-06', NULL),
('Christina', 'Gonzalez', '123 Hickory St', '13579', 'CA', '555-456-7890', 'christina.g@example.com', '2023-02-02', NULL),
('Brandon', 'Martinez', '456 Walnut St', '45678', 'TX', '555-567-8901', 'brandon.m@example.com', '2022-01-15', NULL),
('Nicole', 'Thompson', '789 Chestnut St', '24680', 'NY', '555-678-9012', 'nicole.t@example.com', '2023-03-03', NULL),
('Jeffrey', 'Hernandez', '147 Pecan St', '12345', 'FL', '555-789-0123', 'jeffrey.h@example.com', '2023-04-20', NULL),
('Heather', 'Martinez', '369 Almond St', '98765', 'CA', '555-901-2345', 'heather.m@example.com', '2022-02-28', NULL),
('Adam', 'Hernandez', '741 Cashew St', '13579', 'TX', '555-123-4567', 'adam.h@example.com', '2023-05-15', NULL),
('Tiffany', 'Martinez', '123 Macadamia St', '54321', 'FL', '555-234-5678', 'tiffany.m@example.com', '2023-06-11', NULL),
('Kyle', 'Clark', '456 Brazil Nut St', '24680', 'NY', '555-345-6789', 'kyle.c@example.com', '2022-01-01', NULL),
('Rachel', 'Martinez', '789 Filbert St', '12345', 'CA', '555-456-7890', 'rachel.m@example.com', '2023-07-27', NULL),
('Mark', 'Hernandez', '147 Pistachio St', '98765', 'TX', '555-567-8901', 'mark.h@example.com', '2023-08-19', NULL),
('Crystal', 'Martinez', '369 Acorn St', '13579', 'FL', '555-678-9012', 'crystal.m@example.com', '2022-02-14', NULL),
('Patrick', 'Brown', '741 Chestnut St', '54321', 'CA', '555-789-0123', 'patrick.b@example.com', '2023-09-30', NULL),
('Christine', 'Martinez', '123 Cashew St', '24680', 'NY', '555-901-2345', 'christine.m@example.com', '2022-01-22', NULL),
('Keith', 'Gonzalez', '456 Brazil Nut St', '12345', 'TX', '555-123-4567', 'keith.g@example.com', '2023-10-10', NULL),
('April', 'Martinez', '789 Filbert St', '98765', 'FL', '555-234-5678', 'april.m@example.com', '2023-11-05', NULL),
('Jamie', 'Hernandez', '147 Pistachio St', '13579', 'CA', '555-345-6789', 'jamie.h@example.com', '2022-03-02', NULL),
('Bradley', 'Martinez', '369 Acorn St', '24680', 'NY', '555-456-7890', 'bradley.m@example.com', '2023-12-15', NULL);


-- Table 3 Vehicle Ownership table
 
CREATE TABLE vehicle_ownership ( 
VehicleId INT PRIMARY KEY AUTO_INCREMENT, 
OwnerID INT,
purchase_date DATE,
sale_date DATE,
FOREIGN KEY (ownerid) 
REFERENCES owners(ownerid));

INSERT INTO vehicle_ownership (OwnerID, purchase_date, sale_date) VALUES
(1, '2023-01-15', NULL),
(2, '2022-12-20', '2024-01-05'),
(3, '2023-02-28', NULL),
(4, '2023-03-10', '2024-02-10'),
(5, '2023-04-05', NULL),
(6, '2022-11-11', '2024-03-15'),
(7, '2023-05-20', NULL),
(8, '2023-06-08', NULL),
(9, '2023-07-14', '2024-01-20'),
(10, '2022-10-30', NULL),
(11, '2023-08-22', NULL),
(12, '2023-09-17', NULL),
(13, '2023-10-05', '2024-02-25'),
(14, '2022-09-01', NULL),
(15, '2023-11-30', NULL),
(16, '2023-12-25', NULL),
(17, '2022-08-11', '2024-03-01'),
(18, '2024-01-18', NULL),
(19, '2023-02-14', NULL),
(20, '2023-03-09', NULL),
(21, '2022-07-04', '2024-02-15'),
(22, '2024-02-22', NULL),
(23, '2023-04-11', NULL),
(24, '2023-05-05', NULL),
(25, '2023-06-30', NULL),
(26, '2022-06-16', NULL),
(27, '2023-07-12', '2024-01-10'),
(28, '2023-08-09', NULL),
(29, '2024-03-17', NULL),
(30, '2022-05-24', NULL),
(31, '2023-10-28', NULL),
(32, '2023-11-15', '2024-03-20'),
(33, '2022-04-01', NULL),
(34, '2023-12-09', NULL),
(35, '2022-03-11', NULL),
(36, '2023-01-06', NULL),
(37, '2023-02-02', '2024-02-28'),
(38, '2022-01-15', NULL),
(39, '2023-03-03', NULL),
(40, '2023-04-20', NULL),
(41, '2022-02-28', NULL),
(42, '2023-05-15', NULL),
(43, '2023-06-11', NULL),
(44, '2022-01-01', NULL),
(45, '2023-07-27', NULL),
(46, '2023-08-19', NULL),
(47, '2022-02-14', NULL),
(48, '2023-09-30', NULL),
(49, '2022-03-02', NULL),
(50, '2023-12-15', NULL);


-- Table 4 vehicle registration table

CREATE TABLE vehicle_registration (
    vehicleid INT,
    ownerid INT,
    purchasedate DATE,
    saledate DATE,
    registration_type VARCHAR(50),
    registration_fee INT,
    registration_status VARCHAR(50),
    state_of_registration VARCHAR(50),
    FOREIGN KEY (vehicleid) REFERENCES vehicles(vehicleid),
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);
 
INSERT INTO vehicle_registration (vehicleid, ownerid, purchasedate, saledate, registration_type, registration_fee, registration_status, state_of_registration) VALUES
(1, 1, '2023-01-15', NULL, 'Standard', 100, 'Active', 'California'),
(2, 2, '2022-12-20', '2024-01-05', 'Standard', 120, 'Inactive', 'New York'),
(3, 3, '2023-02-28', NULL, 'Standard', 110, 'Active', 'Texas'),
(4, 4, '2023-03-10', '2024-02-10', 'Premium', 150, 'Inactive', 'Florida'),
(5, 5, '2023-04-05', NULL, 'Standard', 100, 'Active', 'California'),
(6, 6, '2022-11-11', '2024-03-15', 'Standard', 120, 'Inactive', 'New York'),
(7, 7, '2023-05-20', NULL, 'Standard', 110, 'Active', 'Texas'),
(8, 8, '2023-06-08', NULL, 'Standard', 130, 'Active', 'Florida'),
(9, 9, '2023-07-14', '2024-01-20', 'Premium', 160, 'Inactive', 'California'),
(10, 10, '2022-10-30', NULL, 'Standard', 100, 'Active', 'New York'),
(11, 11, '2023-08-22', NULL, 'Standard', 120, 'Active', 'Texas'),
(12, 12, '2023-09-17', NULL, 'Standard', 110, 'Active', 'Florida'),
(13, 13, '2023-10-05', '2024-02-25', 'Premium', 140, 'Inactive', 'California'),
(14, 14, '2022-09-01', NULL, 'Standard', 100, 'Active', 'New York'),
(15, 15, '2023-11-30', NULL, 'Standard', 120, 'Active', 'Texas'),
(16, 16, '2023-12-25', NULL, 'Standard', 110, 'Active', 'Florida'),
(17, 17, '2022-08-11', '2024-03-01', 'Premium', 170, 'Inactive', 'California'),
(18, 18, '2024-01-18', NULL, 'Standard', 100, 'Active', 'New York'),
(19, 19, '2023-02-14', NULL, 'Standard', 120, 'Active', 'Texas'),
(20, 20, '2023-03-09', NULL, 'Standard', 110, 'Active', 'Florida'),
(21, 21, '2022-07-04', '2024-02-15', 'Premium', 150, 'Inactive', 'California'),
(22, 22, '2024-02-22', NULL, 'Standard', 100, 'Active', 'New York'),
(23, 23, '2023-04-11', NULL, 'Standard', 120, 'Active', 'Texas'),
(24, 24, '2023-05-05', NULL, 'Standard', 110, 'Active', 'Florida'),
(25, 25, '2023-06-30', NULL, 'Standard', 130, 'Active', 'California'),
(26, 26, '2022-06-16', NULL, 'Standard', 100, 'Active', 'New York'),
(27, 27, '2023-07-12', '2024-01-10', 'Premium', 140, 'Inactive', 'Texas'),
(28, 28, '2023-08-09', NULL, 'Standard', 120, 'Active', 'Florida'),
(29, 29, '2024-03-17', NULL, 'Standard', 110, 'Active', 'California'),
(30, 30, '2022-05-24', NULL, 'Standard', 100, 'Active', 'New York'),
(31, 31, '2023-10-28', NULL, 'Standard', 120, 'Active', 'Texas'),
(32, 32, '2023-11-15', '2024-03-20', 'Premium', 160, 'Inactive', 'Florida'),
(33, 33, '2022-04-01', NULL, 'Standard', 110, 'Active', 'California'),
(34, 34, '2023-12-09', NULL, 'Standard', 100, 'Active', 'New York'),
(35, 35, '2022-03-11', NULL, 'Standard', 120, 'Active', 'Texas'),
(36, 36, '2023-01-06', NULL, 'Standard', 110, 'Active', 'Florida'),
(37, 37, '2023-02-02', '2024-02-28', 'Premium', 170, 'Inactive', 'California'),
(38, 38, '2022-01-15', NULL, 'Standard', 100, 'Active', 'New York'),
(39, 39, '2023-03-03', NULL, 'Standard', 120, 'Active', 'Texas'),
(40, 40, '2023-04-20', NULL, 'Standard', 110, 'Active', 'Florida'),
(41, 41, '2022-02-28', NULL, 'Standard', 130, 'Active', 'California'),
(42, 42, '2023-05-15', NULL, 'Standard', 100, 'Active', 'New York'),
(43, 43, '2023-06-11', NULL, 'Standard', 120, 'Active', 'Texas'),
(44, 44, '2022-01-01', NULL, 'Standard', 110, 'Active', 'Florida'),
(45, 45, '2023-07-27', NULL, 'Standard', 130, 'Active', 'California'),
(46, 46, '2023-08-19', NULL, 'Standard', 100, 'Active', 'New York'),
(47, 47, '2022-02-14', NULL, 'Standard', 120, 'Active', 'Texas'),
(48, 48, '2023-09-30', NULL, 'Standard', 110, 'Active', 'Florida'),
(49, 49, '2022-03-02', NULL, 'Standard', 140, 'Active', 'California'),
(50, 50, '2023-12-15', NULL, 'Standard', 100, 'Active', 'New York');

-- Table 5 Registration Renewals Table

CREATE TABLE registration_renewals (
    renewalid INT PRIMARY KEY AUTO_INCREMENT,
    registrationid INT,
    renewaldate DATE,
    FOREIGN KEY (registrationid) REFERENCES vehicle_registration(Vehicleid)
);

INSERT INTO registration_renewals (registrationid, renewaldate) VALUES
(1, '2024-01-15'),
(2, '2023-12-20'),
(3, '2024-02-28'),
(4, '2024-03-10'),
(5, '2024-04-05'),
(6, '2024-05-11'),
(7, '2024-06-20'),
(8, '2024-07-08'),
(9, '2024-08-14'),
(10, '2024-09-30'),
(11, '2024-10-22'),
(12, '2024-11-17'),
(13, '2024-12-05'),
(14, '2025-01-01'),
(15, '2025-02-10'),
(16, '2025-03-25'),
(17, '2025-04-30'),
(18, '2025-05-15'),
(19, '2025-06-20'),
(20, '2025-07-12'),
(21, '2025-08-18'),
(22, '2025-09-28'),
(23, '2025-10-05'),
(24, '2025-11-10'),
(25, '2025-12-15'),
(26, '2026-01-20'),
(27, '2026-02-28'),
(28, '2026-03-10'),
(29, '2026-04-15'),
(30, '2026-05-22'),
(31, '2026-06-30'),
(32, '2026-07-05'),
(33, '2026-08-10'),
(34, '2026-09-17'),
(35, '2026-10-25'),
(36, '2026-11-30'),
(37, '2026-12-10'),
(38, '2027-01-15'),
(39, '2027-02-20'),
(40, '2027-03-28'),
(41, '2027-04-05'),
(42, '2027-05-10'),
(43, '2027-06-15'),
(44, '2027-07-20'),
(45, '2027-08-25'),
(46, '2027-09-30'),
(47, '2027-10-10'),
(48, '2027-11-15'),
(49, '2027-12-20'),
(50, '2028-01-25');


-- Table 6 Insurance Company Table

CREATE TABLE insurancecompany (
    insurancecompanyid INT PRIMARY KEY AUTO_INCREMENT,
    companyname VARCHAR(255),
    contactdetails VARCHAR(255)
);
 
INSERT INTO insurancecompany (companyname, contactdetails) VALUES
('ABC Insurance', '123 Main St, City, Country, 12345, +1-234-567-8901'),
('XYZ Insurance', '456 Elm St, City, Country, 54321, +1-345-678-9012'),
('Insurance Co. Ltd.', '789 Oak St, City, Country, 67890, +1-456-789-0123'),
('Insurance Solutions', '321 Pine St, City, Country, 09876, +1-567-890-1234'),
('Guardian Insurance', '654 Cedar St, City, Country, 45678, +1-678-901-2345'),
('Liberty Insurance', '987 Birch St, City, Country, 13579, +1-789-012-3456'),
('Eagle Insurance', '741 Maple St, City, Country, 98765, +1-890-123-4567'),
('Star Insurance', '369 Walnut St, City, Country, 54321, +1-901-234-5678'),
('Sunrise Insurance', '147 Pineapple St, City, Country, 24680, +1-012-345-6789'),
('Peak Insurance', '258 Orange St, City, Country, 35791, +1-987-654-3210'),
('Pioneer Insurance', '369 Banana St, City, Country, 12345, +1-876-543-2109'),
('Golden State Insurance', '741 Coconut St, City, Country, 98765, +1-765-432-1098'),
('Guardian Angel Insurance', '123 Mango St, City, Country, 67890, +1-654-321-0987'),
('Evergreen Insurance', '456 Lemon St, City, Country, 24680, +1-543-210-9876'),
('Blue Sky Insurance', '789 Grape St, City, Country, 13579, +1-432-109-8765'),
('Aegis Insurance', '321 Peach St, City, Country, 35791, +1-321-098-7654'),
('Vanguard Insurance', '654 Cherry St, City, Country, 23456, +1-210-987-6543'),
('Omega Insurance', '987 Apple St, City, Country, 13579, +1-109-876-5432'),
('Pacific Insurance', '147 Grapefruit St, City, Country, 35791, +1-098-765-4321'),
('Horizon Insurance', '369 Pine St, City, Country, 24680, +1-876-543-2109'),
('Elite Insurance', '741 Olive St, City, Country, 98765, +1-765-432-1098'),
('Liberty Mutual', '123 Walnut St, City, Country, 13579, +1-654-321-0987'),
('Safe Harbor Insurance', '456 Chestnut St, City, Country, 35791, +1-543-210-9876'),
('Summit Insurance', '789 Almond St, City, Country, 24680, +1-432-109-8765'),
('United Insurance', '321 Raspberry St, City, Country, 13579, +1-321-098-7654'),
('Global Insurance', '654 Watermelon St, City, Country, 35791, +1-210-987-6543'),
('Golden Shield Insurance', '987 Pear St, City, Country, 24680, +1-109-876-5432'),
('First Choice Insurance', '147 Fig St, City, Country, 13579, +1-098-765-4321'),
('Safeguard Insurance', '369 Pine St, City, Country, 35791, +1-876-543-2109'),
('Security Insurance', '741 Chestnut St, City, Country, 24680, +1-765-432-1098'),
('Western Insurance', '123 Macadamia St, City, Country, 13579, +1-654-321-0987'),
('Sunshine Insurance', '456 Brazil Nut St, City, Country, 35791, +1-543-210-9876'),
('Heritage Insurance', '789 Filbert St, City, Country, 24680, +1-432-109-8765'),
('Dynamic Insurance', '321 Hazelnut St, City, Country, 13579, +1-321-098-7654'),
('Secure Insurance', '654 Pecan St, City, Country, 35791, +1-210-987-6543'),
('Crest Insurance', '987 Walnut St, City, Country, 24680, +1-109-876-5432'),
('Silver Lining Insurance', '147 Cashew St, City, Country, 13579, +1-098-765-4321'),
('Alliance Insurance', '369 Pistachio St, City, Country, 35791, +1-876-543-2109'),
('Preferred Insurance', '741 Cashew St, City, Country, 24680, +1-765-432-1098'),
('Global Assurance', '123 Brazil Nut St, City, Country, 13579, +1-654-321-0987'),
('Summit Insurance Group', '456 Almond St, City, Country, 35791, +1-543-210-9876'),
('Frontier Insurance', '789 Filbert St, City, Country, 24680, +1-432-109-8765'),
('Eagle Insurance Agency', '321 Chestnut St, City, Country, 13579, +1-321-098-7654'),
('Liberty Mutual Group', '654 Hazelnut St, City, Country, 35791, +1-210-987-6543'),
('Golden Shield Assurance', '987 Pecan St, City, Country, 24680, +1-109-876-5432'),
('First Choice Insurance Services', '147 Pistachio St, City, Country, 13579, +1-098-765-4321'),
('Pioneer Insurance Solutions', '369 Walnut St, City, Country, 35791, +1-876-543-2109'),
('Security Insurance Group', '741 Macadamia St, City, Country, 24680, +1-765-432-1098'),
('Western Assurance', '123 Brazil Nut St, City, Country, 13579, +1-654-321-0987'),
('Sunshine Insurance Agency', '456 Filbert St, City, Country, 35791, +1-543-210-9876'),
('Heritage Insurance Services', '789 Hazelnut St, City, Country, 24680, +1-432-109-8765'),
('Dynamic Insurance Solutions', '321 Almond St, City, Country, 13579, +1-321-098-7654'),
('Secure Insurance Group', '654 Cashew St, City, Country, 35791, +1-210-987-6543'),
('Crest Insurance Services', '987 Pistachio St, City, Country, 24680, +1-109-876-5432'),
('Silver Lining Assurance', '147 Walnut St, City, Country, 13579, +1-098-765-4321'),
('Alliance Insurance Agency', '369 Hazelnut St, City, Country, 35791, +1-876-543-2109'),
('Preferred Insurance Group', '741 Almond St, City, Country, 24680, +1-765-432-1098'),
('Global Assurance Group', '123 Cashew St, City, Country, 13579, +1-654-321-0987'),
('Summit Insurance Services', '456 Pistachio St, City, Country, 35791, +1-543-210-9876'),
('Frontier Insurance Solutions', '789 Walnut St, City, Country, 24680, +1-432-109-8765'),
('Eagle Insurance Group', '321 Brazil Nut St, City, Country, 13579, +1-321-098-7654'),
('Liberty Mutual Assurance', '654 Almond St, City, Country, 35791, +1-210-987-6543'),
('Golden Shield Insurance Services', '987 Hazelnut St, City, Country, 24680, +1-109-876-5432'),
('First Choice Insurance Group', '147 Cashew St, City, Country, 13579, +1-098-765-4321'),
('Pioneer Insurance Agency', '369 Pistachio St, City, Country, 35791, +1-876-543-2109'),
('Security Insurance Services', '741 Walnut St, City, Country, 24680, +1-765-432-1098'),
('Western Assurance Group', '123 Macadamia St, City, Country, 13579, +1-654-321-0987'),
('Sunshine Insurance Solutions', '456 Brazil Nut St, City, Country, 35791, +1-543-210-9876'),
('Heritage Insurance Group', '789 Filbert St, City, Country, 24680, +1-432-109-8765'),
('Dynamic Insurance Agency', '321 Hazelnut St, City, Country, 13579, +1-321-098-7654'),
('Secure Insurance Services', '654 Pecan St, City, Country, 35791, +1-210-987-6543'),
('Crest Insurance Group', '987 Walnut St, City, Country, 24680, +1-109-876-5432'),
('Silver Lining Insurance Solutions', '147 Cashew St, City, Country, 13579, +1-098-765-4321'),
('Alliance Insurance Solutions', '369 Pistachio St, City, Country, 35791, +1-876-543-2109'),
('Preferred Insurance Agency', '741 Cashew St, City, Country, 24680, +1-765-432-1098'),
('Global Assurance Services', '123 Brazil Nut St, City, Country, 13579, +1-654-321-0987');

 
-- Table 7 Insurance Policies Table

CREATE TABLE insurance_policies (
    insurance_id VARCHAR(10) PRIMARY KEY,
    coverage_type VARCHAR(50),
    policy_holder_name VARCHAR(50),
    start_date DATE,
    end_date DATE,
    vehicleid INT,
    insurancecompanyid INT,
    FOREIGN KEY (vehicleid) REFERENCES vehicles(vehicleid),
    FOREIGN KEY (insurancecompanyid) REFERENCES insurancecompany(insurancecompanyid)
);

INSERT INTO insurance_policies (insurance_id, coverage_type, policy_holder_name, start_date, end_date, vehicleid, insurancecompanyid) VALUES
('POL001', 'Comprehensive', 'John Doe', '2023-01-15', '2024-01-15', 1, 1),
('POL002', 'Third Party', 'Jane Smith', '2022-12-20', '2023-12-20', 2, 2),
('POL003', 'Collision', 'Alice Johnson', '2023-02-28', '2024-02-28', 3, 3),
('POL004', 'Comprehensive', 'Bob Williams', '2023-03-10', '2024-03-10', 4, 4),
('POL005', 'Third Party', 'Emily Brown', '2023-04-05', '2024-04-05', 5, 5),
('POL006', 'Collision', 'Michael Davis', '2022-11-11', '2023-11-11', 6, 6),
('POL007', 'Comprehensive', 'Sarah Miller', '2023-05-20', '2024-05-20', 7, 7),
('POL008', 'Third Party', 'David Wilson', '2023-06-08', '2024-06-08', 8, 8),
('POL009', 'Collision', 'Jessica Moore', '2023-07-14', '2024-07-14', 9, 9),
('POL010', 'Comprehensive', 'William Taylor', '2022-10-30', '2023-10-30', 10, 10),
('POL011', 'Third Party', 'Andrew Anderson', '2023-08-22', '2024-08-22', 11, 11),
('POL012', 'Collision', 'Olivia Thomas', '2023-09-17', '2024-09-17', 12, 12),
('POL013', 'Comprehensive', 'James Jackson', '2023-10-05', '2024-10-05', 13, 13),
('POL014', 'Third Party', 'Emma White', '2022-09-01', '2023-09-01', 14, 14),
('POL015', 'Collision', 'Daniel Harris', '2023-11-30', '2024-11-30', 15, 15),
('POL016', 'Comprehensive', 'Liam Martin', '2023-12-25', '2024-12-25', 16, 16),
('POL017', 'Third Party', 'Ava Martinez', '2022-08-11', '2023-08-11', 17, 17),
('POL018', 'Collision', 'Sophia Robinson', '2024-01-18', '2025-01-18', 18, 18),
('POL019', 'Comprehensive', 'Noah Clark', '2023-02-14', '2024-02-14', 19, 19),
('POL020', 'Third Party', 'Mason Rodriguez', '2023-03-09', '2024-03-09', 20, 20),
('POL021', 'Collision', 'Logan Lewis', '2022-07-04', '2023-07-04', 21, 21),
('POL022', 'Comprehensive', 'Elijah Lee', '2024-02-22', '2025-02-22', 22, 22),
('POL023', 'Third Party', 'Harper Walker', '2023-04-11', '2024-04-11', 23, 23),
('POL024', 'Collision', 'Aiden Hall', '2023-05-05', '2024-05-05', 24, 24),
('POL025', 'Comprehensive', 'Evelyn Allen', '2023-06-30', '2024-06-30', 25, 25),
('POL026', 'Third Party', 'Ella Young', '2022-06-16', '2023-06-16', 26, 26),
('POL027', 'Collision', 'Benjamin Hernandez', '2023-07-12', '2024-07-12', 27, 27),
('POL028', 'Comprehensive', 'Nathan King', '2023-08-09', '2024-08-09', 28, 28),
('POL029', 'Third Party', 'Lucas Wright', '2024-03-17', '2025-03-17', 29, 29),
('POL030', 'Collision', 'Carter Scott', '2022-05-24', '2023-05-24', 30, 30),
('POL031', 'Comprehensive', 'Isaac Torres', '2023-10-28', '2024-10-28', 31, 31),
('POL032', 'Third Party', 'Aria Nguyen', '2023-11-15', '2024-11-15', 32, 32),
('POL033', 'Collision', 'Scarlett Hill', '2022-04-01', '2023-04-01', 33, 33),
('POL034', 'Comprehensive', 'Grace Flores', '2023-12-09', '2024-12-09', 34, 34),
('POL035', 'Third Party', 'Zoey Green', '2022-03-11', '2023-03-11', 35, 35),
('POL036', 'Collision', 'Riley Adams', '2023-01-06', '2024-01-06', 36, 36),
('POL037', 'Comprehensive', 'Leo Baker', '2023-02-02', '2024-02-02', 37, 37),
('POL038', 'Third Party', 'Hudson Nelson', '2023-03-28', '2024-03-28', 38, 38),
('POL039', 'Collision', 'Lily Carter', '2023-04-20', '2024-04-20', 39, 39),
('POL040', 'Comprehensive', 'Layla Mitchell', '2022-02-28', '2023-02-28', 40, 40),
('POL041', 'Third Party', 'Brooklyn Perez', '2023-05-15', '2024-05-15', 41, 41),
('POL042', 'Collision', 'Christopher Roberts', '2023-06-11', '2024-06-11', 42, 42),
('POL043', 'Comprehensive', 'Madison Turner', '2022-01-01', '2023-01-01', 43, 43),
('POL044', 'Third Party', 'Grayson Phillips', '2023-07-27', '2024-07-27', 44, 44),
('POL045', 'Collision', 'Gavin Campbell', '2023-08-19', '2024-08-19', 45, 45),
('POL046', 'Comprehensive', 'Aubrey Parker', '2022-02-14', '2023-02-14', 46, 46),
('POL047', 'Third Party', 'Zachary Evans', '2023-09-30', '2024-09-30', 47, 47),
('POL048', 'Collision', 'Addison Edwards', '2022-03-02', '2023-03-02', 48, 48),
('POL049', 'Comprehensive', 'Eleanor Collins', '2023-12-15', '2024-12-15', 49, 49),
('POL050', 'Third Party', 'Nolan Stewart', '2024-01-25', '2025-01-25', 50, 50);


-- Table 8 Parking Tickets Table

CREATE TABLE Parking_Tickets (
    TicketNumber INT AUTO_INCREMENT PRIMARY KEY,
    VehicleID INT,
    IssueDate DATE,
    FineAmount DECIMAL(10, 2),
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);

INSERT INTO Parking_Tickets (VehicleID, IssueDate, FineAmount) VALUES
(1, '2023-01-15', 50.00),
(2, '2023-02-20', 60.00),
(3, '2023-03-25', 70.00),
(4, '2023-04-10', 80.00),
(5, '2023-05-05', 90.00),
(6, '2023-06-15', 100.00),
(7, '2023-07-20', 110.00),
(8, '2023-08-08', 120.00),
(9, '2023-09-14', 130.00),
(10, '2023-10-30', 140.00),
(11, '2023-11-22', 150.00),
(12, '2023-12-17', 160.00),
(13, '2024-01-05', 170.00),
(14, '2024-02-01', 180.00),
(15, '2024-03-10', 190.00),
(16, '2024-04-15', 200.00),
(17, '2024-05-20', 210.00),
(18, '2024-06-12', 220.00),
(19, '2024-07-01', 230.00),
(20, '2024-08-18', 240.00),
(21, '2024-09-28', 250.00),
(22, '2024-10-05', 260.00),
(23, '2024-11-10', 270.00),
(24, '2024-12-15', 280.00),
(25, '2025-01-20', 290.00),
(26, '2025-02-28', 300.00),
(27, '2025-03-10', 310.00),
(28, '2025-04-15', 320.00),
(29, '2025-05-22', 330.00),
(30, '2025-06-30', 340.00),
(31, '2025-07-05', 350.00),
(32, '2025-08-10', 360.00),
(33, '2025-09-17', 370.00),
(34, '2025-10-25', 380.00),
(35, '2025-11-30', 390.00),
(36, '2025-12-10', 400.00),
(37, '2026-01-15', 410.00),
(38, '2026-02-20', 420.00),
(39, '2026-03-28', 430.00),
(40, '2026-04-05', 440.00),
(41, '2026-05-10', 450.00),
(42, '2026-06-15', 460.00),
(43, '2026-07-20', 470.00),
(44, '2026-08-25', 480.00),
(45, '2026-09-30', 490.00),
(46, '2026-10-10', 500.00),
(47, '2026-11-15', 510.00),
(48, '2026-12-20', 520.00),
(49, '2027-01-25', 530.00),
(50, '2027-02-28', 540.00);


-- Table 9 Maintenance Records Table
CREATE TABLE Maintenance_Records (
    RecordID INT AUTO_INCREMENT PRIMARY KEY,
    VehicleID INT,
    ServiceDate DATE,
    ServiceType VARCHAR(255),
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);

INSERT INTO Maintenance_Records (VehicleID, ServiceDate, ServiceType) VALUES
(1, '2023-01-15', 'Oil Change'),
(2, '2023-02-20', 'Tire Rotation'),
(3, '2023-03-25', 'Brake Inspection'),
(4, '2023-04-10', 'Engine Tune-up'),
(5, '2023-05-05', 'Transmission Flush'),
(6, '2023-06-15', 'Wheel Alignment'),
(7, '2023-07-20', 'Coolant Flush'),
(8, '2023-08-08', 'Battery Replacement'),
(9, '2023-09-14', 'Air Filter Replacement'),
(10, '2023-10-30', 'Spark Plug Replacement'),
(11, '2023-11-22', 'Fuel Filter Replacement'),
(12, '2023-12-17', 'Timing Belt Replacement'),
(13, '2024-01-05', 'Radiator Replacement'),
(14, '2024-02-01', 'Ignition Coil Replacement'),
(15, '2024-03-10', 'Alternator Replacement'),
(16, '2024-04-15', 'Starter Motor Replacement'),
(17, '2024-05-20', 'Power Steering Fluid Replacement'),
(18, '2024-06-12', 'Suspension System Inspection'),
(19, '2024-07-01', 'Exhaust System Inspection'),
(20, '2024-08-18', 'Catalytic Converter Replacement'),
(21, '2024-09-28', 'Thermostat Replacement'),
(22, '2024-10-05', 'EGR Valve Replacement'),
(23, '2024-11-10', 'PCV Valve Replacement'),
(24, '2024-12-15', 'Oxygen Sensor Replacement'),
(25, '2025-01-20', 'Mass Airflow Sensor Replacement'),
(26, '2025-02-28', 'Fuel Injector Cleaning'),
(27, '2025-03-10', 'Intake Manifold Gasket Replacement'),
(28, '2025-04-15', 'Head Gasket Replacement'),
(29, '2025-05-22', 'Timing Chain Replacement'),
(30, '2025-06-30', 'Camshaft Position Sensor Replacement'),
(31, '2025-07-05', 'Crankshaft Position Sensor Replacement'),
(32, '2025-08-10', 'Throttle Body Cleaning'),
(33, '2025-09-17', 'Brake Pad Replacement'),
(34, '2025-10-25', 'Brake Rotor Replacement'),
(35, '2025-11-30', 'Wheel Bearing Replacement'),
(36, '2025-12-10', 'CV Joint Replacement'),
(37, '2026-01-15', 'Rack and Pinion Replacement'),
(38, '2026-02-20', 'Power Steering Pump Replacement'),
(39, '2026-03-28', 'Shock Absorber Replacement'),
(40, '2026-04-05', 'Strut Replacement'),
(41, '2026-05-10', 'Tie Rod End Replacement'),
(42, '2026-06-15', 'Ball Joint Replacement'),
(43, '2026-07-20', 'Wheel Hub Assembly Replacement'),
(44, '2026-08-25', 'Drive Belt Replacement'),
(45, '2026-09-30', 'Hose Replacement'),
(46, '2026-10-10', 'Water Pump Replacement'),
(47, '2026-11-15', 'Thermostat Replacement'),
(48, '2026-12-20', 'Radiator Hose Replacement'),
(49, '2027-01-25', 'Cooling Fan Replacement'),
(50, '2027-02-28', 'Heater Core Replacement');


-- Table 10 Traffic Violations Table

CREATE TABLE Traffic_Violations (
    ViolationID INT AUTO_INCREMENT PRIMARY KEY,
    VehicleID INT,
    Date DATE,
    Penalty DECIMAL(10, 2),
    VehicleType VARCHAR(255),
    Gas_Type VARCHAR(255),
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);

INSERT INTO Traffic_Violations (VehicleID, Date, Penalty, VehicleType, Gas_Type) VALUES
(1, '2022-03-11', 147.83, 'Sedan',  'Diesel'),
(2, '2022-01-21', 418.41, 'Sedan',  'Petrol'),
(3, '2022-05-18', 311.75, 'Sedan',  'Diesel'),
(4, '2022-03-24', 255.51, 'Sedan',  'Petrol'),
(5, '2022-11-21', 450.82, 'SUV',  'Diesel'),
(6, '2022-07-15', 182.96, 'Hatchback',  'Electric'),
(7, '2022-09-03', 234.88, 'SUV',  'Hybrid'),
(8, '2022-02-20', 399.67, 'Sedan',  'Diesel'),	
(9, '2022-12-13', 98.76, 'SUV',  'Petrol'),
(10, '2022-08-07', 123.45, 'Sedan',  'Electric'),
(11, '2022-04-22', 295.04, 'Minivan',  'Hybrid'),
(12, '2022-06-30', 477.89, 'Truck',  'Diesel'),
(13, '2022-10-25', 289.17, 'SUV',  'Petrol'),
(14, '2022-03-07', 306.53, 'Sedan',  'Electric'),
(15, '2022-01-18', 412.37, 'Sedan',  'Hybrid'),
(16, '2022-05-23', 178.29, 'SUV',  'Diesel'),
(17, '2022-03-19', 467.12, 'Sedan',  'Petrol'),
(18, '2022-11-04', 210.58, 'Sedan',  'Diesel'),
(19, '2022-07-09', 249.99, 'Coupe',  'Electric'),
(20, '2022-09-01', 143.67, 'Sedan',  'Hybrid'),
(21, '2022-02-12', 356.72, 'Sedan',  'Diesel'),
(22, '2022-12-08', 192.88, 'Hatchback',  'Petrol'),
(23, '2022-08-14', 203.55, 'Sedan',  'Electric'),
(24, '2022-04-17', 314.89, 'Sedan',  'Hybrid'),
(25, '2022-06-25', 459.73, 'Sedan',  'Diesel'),
(26, '2022-10-20', 112.36, 'SUV',  'Petrol'),
(27, '2022-03-16', 487.25, 'Wagon',  'Electric'),
(28, '2022-01-13', 426.98, 'Sedan',  'Hybrid'),
(29, '2022-05-20', 160.22, 'Sedan',  'Diesel'),
(30, '2022-03-22', 224.19, 'Sedan',  'Petrol'),
(31, '2022-11-09', 453.81, 'SUV',  'Electric'),
(32, '2022-07-18', 186.47, 'Wagon',  'Hybrid'),
(33, '2022-09-06', 237.54, 'Sedan',  'Diesel'),
(34, '2022-02-23', 401.62, 'Wagon',  'Petrol'),
(35, '2022-12-16', 99.97, 'Sedan',  'Electric'),
(36, '2022-08-10', 124.29, 'Wagon',  'Hybrid'),
(37, '2022-04-25', 296.01, 'Truck',  'Diesel'),
(38, '2022-07-02', 478.5, 'Coupe',  'Petrol'),
(39, '2022-10-28', 290.78, 'Sedan',  'Electric'),
(40, '2022-03-10', 307.22, 'Coupe',  'Hybrid'),
(41, '2022-01-19', 413.67, 'Hatchback',  'Diesel'),
(42, '2022-05-24', 179.6, 'Wagon',  'Petrol'),
(43, '2022-03-20', 468.43, 'Sedan',  'Electric'),
(44, '2022-11-05', 211.89, 'Truck',  'Hybrid'),
(45, '2022-07-10', 250, 'Sedan',  'Diesel'),
(46, '2022-09-02', 144.67, 'Coupe',  'Petrol'),
(47, '2022-02-13', 357.92, 'Truck',  'Electric'),
(48, '2022-12-09', 193.19, 'Truck',  'Hybrid'),
(49, '2022-08-15', 204.75, 'Truck',  'Diesel'),
(50, '2022-04-18', 315.2, 'Coupe',  'Petrol');



-- Table 11 Vehicle Specification Table


CREATE TABLE Vehicle_Specifications (
    SpecID INT AUTO_INCREMENT PRIMARY KEY,
    VehicleID INT,
    Vehicle_Type VARCHAR(50),
    GasType VARCHAR(100),
    EngineSize VARCHAR(100),
    Horsepower INT,
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);


INSERT INTO Vehicle_Specifications (VehicleID, Vehicle_Type, GasType, EngineSize, Horsepower) VALUES
(1, 'Sedan', 'Petrol', '2.0L',  150),
(2, 'Sedan', 'Petrol', '2.5L',  200),
(3, 'Sedan', 'Diesel', '3.0L',  250),
(4, 'Sedan', 'Petrol', '3.5L',  300),
(5, 'SUV', 'Diesel', '1.5L',  130),
(6, 'Hatchback', 'Electric', 'Electric Motor',  220),
(7, 'SUV', 'Hybrid', '2.5L Hybrid',  190),
(8, 'Sedan', 'Diesel', '2.0L Turbo',  270),
(9, 'SUV', 'Petrol', '4.0L',  310),
(10, 'Sedan', 'Electric', 'Electric Motor',  115),
(11, 'Minivan', 'Hybrid', '2.0L Hybrid',  180),
(12, 'Truck', 'Diesel', '1.6L Diesel',  240),
(13, 'SUV', 'Petrol', '2.2L',  200),
(14, 'Sedan', 'Electric', 'Electric Motor',  360),
(15, 'Sedan', 'Hybrid', '2.5L Hybrid',  140),
(16, 'SUV', 'Diesel', '2.8L Diesel',  210),
(17, 'Sedan', 'Petrol', '3.0L',  230),
(18, 'Sedan', 'Diesel', '2.8L Diesel',  220),
(19, 'Coupe', 'Electric', 'Electric Motor',  340),
(20, 'Sedan', 'Hybrid', '2.5L Hybrid',  160),
(21, 'Sedan', 'Diesel', '3.5L V6',  280),
(22, 'Hatchback', 'Petrol', '2.7L Petrol',  210),
(23, 'Sedan', 'Electric', 'Electric Motor',  190),
(24, 'Sedan', 'Hybrid', '2.5L Hybrid',  320),
(25, 'Sedan', 'Diesel', '1.8L',  130),
(26, 'SUV', 'Petrol', '3.0L',  230),
(27, 'Wagon', 'Electric', 'Electric Motor',  200),
(28, 'Sedan', 'Hybrid', '2.5L Hybrid',  300),
(29, 'Sedan', 'Diesel', '6.0L V8',  370),
(30, 'Sedan', 'Petrol', '1.9L Petrol',  120),
(31, 'SUV', 'Electric', 'Electric Motor',  175),
(32, 'Wagon', 'Hybrid', '2.5L Hybrid',  290),
(33, 'Sedan', 'Diesel', '2.3L',  205),
(34, 'Wagon', 'Petrol', '3.0L Petrol',  350),
(35, 'Sedan', 'Electric', 'Electric Motor',  150),
(36, 'Wagon', 'Hybrid', '2.5L Hybrid',  250),
(37, 'Truck', 'Diesel', '2.4L',  180),
(38, 'Coupe', 'Petrol', '3.0L Petrol',  230),
(39, 'Sedan', 'Electric', 'Electric Motor',  395),
(40, 'Coupe', 'Hybrid', '2.5L Hybrid',  135),
(41, 'Hatchback', 'Diesel', '4.0L V8',  310),
(42, 'Wagon', 'Petrol', '3.0L Petrol',  270),
(43, 'Sedan', 'Electric', 'Electric Motor',  160),
(44, 'Truck', 'Hybrid', '2.5L Hybrid',  330),
(45, 'Sedan', 'Diesel', 'Electric Motor',  170),
(46, 'Coupe', 'Petrol', '1.2L Turbo',  180),
(47, 'Truck', 'Electric', 'Electric Motor',  260),
(48, 'Truck', 'Hybrid', '2.7L Hybrid',  210),
(49, 'Truck', 'Diesel', '2.0L Diesel',  400),
(50, 'Coupe', 'Petrol', '1.2L Turbo',  125);


-- Table 12 Service Providers Table

CREATE TABLE Service_Providers (
    ProviderID INT AUTO_INCREMENT PRIMARY KEY,
    ProviderName VARCHAR(255),
    ServiceType VARCHAR(255)
);

INSERT INTO Service_Providers (ProviderName, ServiceType) VALUES
('QuickFix Auto Repairs', 'Vehicle Repair'),
('Citywide Towing Services', 'Towing'),
('Auto Insurance Specialists', 'Vehicle Insurance'),
('Precision Auto Detailing', 'Car Detailing'),
('Express Oil Change', 'Oil Change Service'),
('SafeRide Driving School', 'Driving Lessons'),
('Guardian Car Insurance', 'Car Insurance'),
('Electric Vehicle Charging Solutions', 'EV Charging Station'),
('High Performance Auto Parts', 'Auto Parts Sales'),
('Speedy Glass Repair', 'Windshield Repair'),
('Classic Car Restoration Experts', 'Classic Car Restoration'),
('Urban Car Wash', 'Car Wash'),
('Vehicle Safety Inspections', 'Safety Inspections'),
('Eco-Friendly Car Detailing', 'Eco-Friendly Detailing'),
('Rapid Roadside Assistance', 'Roadside Assistance'),
('Luxury Auto Leasing', 'Auto Leasing'),
('Truck and Trailer Rentals', 'Truck Rental'),
('Motorcycle Maintenance Shop', 'Motorcycle Repair'),
('RV Care and Repair', 'RV Repair'),
('Fleet Management Solutions', 'Fleet Management Services'),
('Secure Vehicle Storage', 'Vehicle Storage'),
('Performance Tuning Professionals', 'Vehicle Tuning'),
('Auto Body and Paint Shop', 'Bodywork and Painting'),
('Commercial Vehicle Financing', 'Commercial Vehicle Loans'),
('Mobile Mechanic Services', 'Mobile Vehicle Repair'),
('GPS Tracking Solutions', 'Vehicle GPS Tracking'),
('24/7 Emergency Towing', 'Emergency Towing'),
('TyrePlus Service Centers', 'Tire Sales & Service'),
('Hybrid Car Specialists', 'Hybrid Vehicle Services'),
('Auto Accessory Store', 'Vehicle Accessories'),
('Custom Auto Sound Systems', 'Car Audio Systems'),
('Wheel Alignment Experts', 'Wheel Alignment'),
('Air Conditioning Repair Services', 'Vehicle AC Repair'),
('Automotive Locksmiths', 'Locksmith Services'),
('Car Rental Services', 'Car Rental'),
('Heavy Duty Truck Repairs', 'Heavy Duty Vehicle Repair'),
('Vehicle Emission Testing Center', 'Emission Testing'),
('Auto Finance Advisors', 'Auto Financing'),
('Car Key Duplication Service', 'Key Duplication'),
('Paint Protection Services', 'Paint Protection'),
('Auto Warranty Solutions', 'Extended Auto Warranties'),
('Off-Road Equipment Supplier', 'Off-Road Vehicle Equipment'),
('Vehicle Registration Services', 'Vehicle Registration'),
('Car Auction Services', 'Car Auctions'),
('Public Transport Fleet Services', 'Public Transport Services'),
('Commercial Fleet Washing', 'Fleet Washing'),
('Automotive Event Planners', 'Automotive Events'),
('Car Sharing Services', 'Car Sharing'),
('Rideshare Vehicle Management', 'Rideshare Services'),
('Automotive Marketing Solutions', 'Automotive Marketing');


-- Table 13 Payment History Table

CREATE TABLE Payment_History (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    OwnerID INT,
    Amount DECIMAL(10, 2),
    PaymentDate DATE,
    Mode_of_payment VARCHAR(255),
    Payment_Reference_number VARCHAR(255),
    FOREIGN KEY (OwnerID) REFERENCES Owners(OwnerID)
);

INSERT INTO Payment_History (OwnerID, Amount, PaymentDate, Mode_of_payment, Payment_Reference_number) VALUES
(1, 200.00, '2023-01-15', 'Credit Card', 'CC20230115001'),
(2, 150.50, '2023-01-16', 'Debit Card', 'DC20230116001'),
(3, 300.75, '2023-01-17', 'Bank Transfer', 'BT20230117001'),
(4, 220.00, '2023-01-18', 'Cash', 'CS20230118001'),
(5, 250.25, '2023-01-19', 'Mobile Payment', 'MP20230119001'),
(6, 195.00, '2023-02-15', 'Credit Card', 'CC20230215001'),
(7, 205.50, '2023-02-16', 'Debit Card', 'DC20230216001'),
(8, 320.75, '2023-02-17', 'Bank Transfer', 'BT20230217001'),
(9, 230.00, '2023-02-18', 'Cash', 'CS20230218001'),
(10, 260.25, '2023-02-19', 'Mobile Payment', 'MP20230219001'),
(11, 200.00, '2023-03-15', 'Credit Card', 'CC20230315001'),
(12, 150.50, '2023-03-16', 'Debit Card', 'DC20230316001'),
(13, 300.75, '2023-03-17', 'Bank Transfer', 'BT20230317001'),
(14, 220.00, '2023-03-18', 'Cash', 'CS20230318001'),
(15, 250.25, '2023-03-19', 'Mobile Payment', 'MP20230319001'),
(16, 195.00, '2023-04-15', 'Credit Card', 'CC20230415001'),
(17, 205.50, '2023-04-16', 'Debit Card', 'DC20230416001'),
(18, 320.75, '2023-04-17', 'Bank Transfer', 'BT20230417001'),
(19, 230.00, '2023-04-18', 'Cash', 'CS20230418001'),
(20, 260.25, '2023-04-19', 'Mobile Payment', 'MP20230419001'),
(21, 200.00, '2023-05-15', 'Credit Card', 'CC20230515001'),
(22, 150.50, '2023-05-16', 'Debit Card', 'DC20230516001'),
(23, 300.75, '2023-05-17', 'Bank Transfer', 'BT20230517001'),
(24, 220.00, '2023-05-18', 'Cash', 'CS20230518001'),
(25, 250.25, '2023-05-19', 'Mobile Payment', 'MP20230519001'),
(26, 195.00, '2023-06-15', 'Credit Card', 'CC20230615001'),
(27, 205.50, '2023-06-16', 'Debit Card', 'DC20230616001'),
(28, 320.75, '2023-06-17', 'Bank Transfer', 'BT20230617001'),
(29, 230.00, '2023-06-18', 'Cash', 'CS20230618001'),
(30, 260.25, '2023-06-19', 'Mobile Payment', 'MP20230619001'),
(31, 200.00, '2023-07-15', 'Credit Card', 'CC20230715001'),
(32, 150.50, '2023-07-16', 'Debit Card', 'DC20230716001'),
(33, 300.75, '2023-07-17', 'Bank Transfer', 'BT20230717001'),
(34, 220.00, '2023-07-18', 'Cash','CS20230718001'),
(35, 250.25, '2023-07-19', 'Mobile Payment', 'MP20230719001'),
(36, 195.00, '2023-08-15', 'Credit Card', 'CC20230815001'),
(37, 205.50, '2023-08-16', 'Debit Card', 'DC20230816001'),
(38, 320.75, '2023-08-17', 'Bank Transfer', 'BT20230817001'),
(39, 230.00, '2023-08-18', 'Cash', 'CS20230818001'),
(40, 260.25, '2023-08-19', 'Mobile Payment', 'MP20230819001'),
(41, 200.00, '2023-09-15', 'Credit Card', 'CC20230915001'),
(42, 150.50, '2023-09-16', 'Debit Card', 'DC20230916001'),
(43, 300.75, '2023-09-17', 'Bank Transfer', 'BT20230917001'),
(44, 220.00, '2023-09-18', 'Cash', 'CS20230918001'),
(45, 250.25, '2023-09-19', 'Mobile Payment', 'MP20230919001'),
(46, 195.00, '2023-10-15', 'Credit Card', 'CC20231015001'),
(47, 205.50, '2023-10-16', 'Debit Card', 'DC20231016001'),
(48, 320.75, '2023-10-17', 'Bank Transfer', 'BT20231017001'),
(49, 230.00, '2023-10-18', 'Cash', 'CS20231018001'),
(50, 260.25, '2023-10-19', 'Mobile Payment', 'MP20231019001');

SHOW TABLES;

-- Table 14

CREATE TABLE Insurance_Claims (
    ClaimID INT AUTO_INCREMENT PRIMARY KEY,
    PolicyID VARCHAR(10),
    OwnerID INT,
    VehicleID INT,
    ClaimDate DATE,
    ClaimAmount DECIMAL(10, 2),
    Status VARCHAR(50),
    IncidentDescription TEXT,
    FOREIGN KEY (PolicyID) REFERENCES insurance_policies(insurance_id),
    FOREIGN KEY (OwnerID) REFERENCES Owners(OwnerID),
    FOREIGN KEY (VehicleID) REFERENCES vehicles(VehicleID)
);

INSERT INTO Insurance_Claims (PolicyID, OwnerID, VehicleID, ClaimDate, ClaimAmount, Status, IncidentDescription) VALUES 
('POL001' , 1 , 1 ,  '2022-03-31' , 5807.37 ,  'Open', 'Fender bender in traffic'),
('POL002' , 2 , 2 ,  '2021-11-09' , 169.43 ,  'Under Investigation', 'Side collision with a cyclist'),
('POL003' , 3 , 3 ,  '2022-10-14' , 4803.21 ,  'Resolved', 'Paint damage from acid rain'),
('POL004' , 4 , 4 ,  '2023-06-09' , 7511.26 ,  'Resolved', 'Torn seat upholstery from pet damage'),
('POL005' , 5 , 5 ,  '2020-02-08' , 1196.57 ,  'Under Investigation', 'Broken window from attempted break-in'),
('POL006' , 6 , 6 ,  '2022-09-28' , 4317.06 ,  'Resolved', 'Sunroof damage from falling acorn'),
('POL007' , 7 , 7 ,  '2022-08-02' , 3351.13 ,  'Resolved', 'Damage from pothole on main street'),
('POL008' , 8 , 8 ,  '2020-07-24' , 9686.96 ,  'Under Investigation', 'Vehicle rollover during storm'),
('POL009' , 9 , 9 ,  '2023-11-06' , 9399.28 ,  'Closed', 'Keyed car in mall parking lot'),
('POL010' , 10 , 10 ,  '2022-11-19' , 5790.2 ,  'Resolved', 'Collision with a deer on the highway'),
('POL011', 11 , 11 ,  '2022-06-17' , 7804.73 ,  'Resolved', 'Bumper damage from loose shopping cart'),
('POL012' , 12 , 12 ,  '2023-11-07' , 6748.23 ,  'Closed', 'Damage from overheating engine'),
('POL013' , 13 , 13 ,  '2022-02-19' , 4230.42 ,  'Open', 'Hail damage on hood and roof'),
('POL014' , 14 , 14 ,  '2023-05-14' , 6482.51 ,  'Closed', 'Smashed side mirror during street parking'),
('POL015' , 15 , 15 ,  '2021-07-09' , 9923.72 ,  'Open', 'Collision with a guardrail in the snow'),
('POL016' , 16 , 16 ,  '2023-11-05' , 9530.05 ,  'Resolved', 'Graffiti on car hood overnight'),
('POL017' , 17 , 17 ,  '2023-03-05' , 9521.46 ,  'Open', 'Sideswipe by a truck merging lanes'),
('POL018' , 18 , 18 ,  '2023-02-05' , 1375.86 ,  'Open', 'Collision at four-way stop'),
('POL019' , 19 , 19 ,  '2023-11-02' , 8039.32 ,  'Closed', 'Stolen car seats and interior damage'),
('POL020' , 20 , 20 ,  '2023-07-03' , 3363.95 ,  'Closed', 'Minor collision with a pedestrian'),
('POL021' , 21 , 21 ,  '2023-10-05' , 9150.72 ,  'Open', 'Dent on roof from fallen tree branch'),
('POL022' , 22 , 22 ,  '2022-09-24' , 8516.84 ,  'Closed', 'Cracked headlight from rock on road'),
('POL023' , 23 , 23 ,  '2023-03-03' , 4094.11 ,  'Closed', 'Battery theft in driveway'),
('POL024' , 24 , 24 ,  '2023-05-16' , 4255.77 ,  'Open', 'Front bumper damage from parking meter'),
('POL025' , 25 , 25 ,  '2020-11-12' , 7415.85 ,  'Resolved', 'Windshield damage from winter storm'),
('POL026' , 26 , 26 ,  '2020-04-10' , 3638.48 ,  'Under Investigation', 'Stolen vehicle recovered with damages'),
('POL027' , 27 , 27 ,  '2023-10-10' , 946.97 ,  'Under Investigation', 'Broken tail light from reversing mishap'),
('POL028' , 28 , 28 ,  '2022-02-14' , 5509.06 ,  'Open', 'Rear-end collision at stop light'),
('POL029' , 29 , 29 ,  '2023-07-07' , 2831.11 ,  'Closed', 'Theft of wheels at train station'),
('POL030' , 30 , 30 ,  '2022-09-12' , 5372.02 ,  'Closed', 'Broken windshield from flying debris'),
('POL031' , 31 , 31 ,  '2021-08-13' , 2490.61 ,  'Closed', 'Side-swipe with a city bus'),
('POL032' , 32 , 32 ,  '2020-11-02' , 7740.85 ,  'Open', 'Fuel line cut in attempted theft'),
('POL033' , 33 , 33 ,  '2023-12-20' , 4267.71 ,  'Resolved', 'Vehicle damage due to towing error'),
('POL034' , 34 , 34 ,  '2023-08-25' , 3210.38 ,  'Resolved', 'Vandalism to vehicle paint'),
('POL035' , 35 , 35 ,  '2023-09-16' , 3864.14 ,  'Resolved', 'Oil leak after hitting a sharp object'),
('POL036' , 36 , 36 ,  '2021-05-24' , 2549.28 ,  'Closed', 'Rear bumper damage from backing into pole'),
('POL037' , 37 , 37 ,  '2022-08-18' , 1932.11 ,  'Open', 'Rear hatch damage while loading cargo'),
('POL038' , 38 , 38 ,  '2023-08-21' , 3753.99 ,  'Under Investigation', 'Tire blowout on interstate'),
('POL039' , 39 , 39 ,  '2021-12-13' , 8128.96 ,  'Resolved', 'Side door dent from parking lot hit and run'),
('POL040' , 40 , 40 ,  '2022-03-29' , 8491.33 ,  'Under Investigation', 'Theft of personal items from glove compartment'),
('POL041' , 41 , 41 ,  '2023-09-17' , 4465.47 ,  'Closed', 'Stolen GPS and stereo system'),
('POL042' , 42 , 42 ,  '2020-01-02' , 9396.34 ,  'Under Investigation', 'Hit and run in supermarket parking'),
('POL043' , 43 , 43 ,  '2022-11-14' , 207.63 ,  'Closed', 'Rear-end collision causing whiplash'),
('POL044' , 44 , 44 ,  '2020-01-14' , 5637.37 ,  'Closed', 'Scratched door in garage'),
('POL045' , 45 , 45 ,  '2021-08-27' , 4292.86 ,  'Open', 'Minor scratches from car wash equipment'),
('POL046' , 46 , 46 ,  '2020-09-08' , 1042.44 ,  'Resolved', 'Scratch on bumper from misjudged turn'),
('POL047' , 47 , 47 ,  '2021-03-23' , 2482.76 ,  'Open', 'Theft of vehicle radio'),
('POL048' , 48 , 48 ,  '2023-01-26' , 5316.45 ,  'Open', 'Engine fire at gas station'),
('POL049' , 49 , 49 ,  '2022-01-26' , 8515.77 ,  'Closed', 'Vehicle flooded in underground parking'),
('POL050' , 50 , 50 ,  '2021-01-05' , 7611.38 ,  'Resolved', 'Vehicle theft in parking lot');

-- Table 15 Fuel Logs Table
CREATE TABLE Fuel_Logs (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    VehicleID INT,
    Date DATE,
    GasType VARCHAR(50),
    Quantity DECIMAL(5, 2),
    PricePerUnit DECIMAL(5, 2),
    TotalCost DECIMAL(7, 2) GENERATED ALWAYS AS (Quantity * PricePerUnit) STORED,
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);

INSERT INTO Fuel_Logs (VehicleID, Date, GasType, Quantity, PricePerUnit) VALUES
(1,	 '2023-03-01',	 'Petrol',	15,	 3.50),
(2,	 '2023-03-02',	 'Petrol',	12.5,	 3.20),
(3,	 '2023-03-03',	 'Diesel',	50,	 0.15),
(4,	 '2023-03-04',	 'Petrol',	14,	 3.45),
(5,	 '2023-03-05',	 'Diesel',	8,	 3.40),
(6,	 '2023-03-06',	 'Electric',	16,	 3.55),
(7,	 '2023-03-07',	 'Hybrid',	13,	 3.25),
(8,	 '2023-03-08',	 'Diesel',	45,	 0.20),
(9,	 '2023-03-09',	 'Petrol',	13.5,	 3.60),
(10, '2023-03-10',	 'Electric', 9,	 3.50),
(11,	 '2023-03-11',	 'Hybrid',	15.5,	 3.65),
(12,	 '2023-03-12',	 'Diesel',	11,	 3.30),
(13,	 '2023-03-13',	 'Petrol',	40,	 0.18),
(14,	 '2023-03-14',	 'Electric', 14.5,	 3.70),
(15,	 '2023-03-15',	 'Hybrid',	8.5,	 3.55),
(16,	 '2023-03-16',	 'Diesel',	16.5,	 3.75),
(17,	 '2023-03-17',	 'Petrol',	12,	 3.35),
(18,	 '2023-03-18',	 'Diesel',	55,	 0.22),
(19,	 '2023-03-19',	 'Electric', 14.75,	 3.80),
(20,	 '2023-03-20',	 'Hybrid',	9.5,	 3.60),
(21,	 '2023-03-21',	 'Diesel',	17,	 3.85),
(22,	 '2023-03-22',	 'Petrol',	11.5,	 3.40),
(23,	 '2023-03-23',	 'Electric', 60,	 0.25),
(24,	 '2023-03-24',	 'Hybrid',	15,	 3.90),
(25,	 '2023-03-25',	 'Diesel',	10,	 3.65),
(26,	 '2023-03-26',	 'Petrol',	17.5, 3.95),
(27,	 '2023-03-27',	 'Electric', 12.75, 3.45),
(28,	 '2023-03-28',	 'Hybrid',	65,	 0.27),
(29,	 '2023-03-29',	 'Diesel',	15.25, 4.00),
(30,	 '2023-03-30',	 'Petrol',	10.5, 3.70),
(31,	 '2023-03-31',	 'Electric',	18,	 4.05),
(32,	 '2023-04-01',	 'Hybrid',	13.5, 3.50),
(33,	 '2023-04-02',	 'Diesel',	70,	 0.30),
(34,	 '2023-04-03',	 'Petrol',	15.5, 4.10),
(35,	 '2023-04-04',	 'Electric',	11,	 3.75),
(36,	 '2023-04-05',	 'Hybrid',	18.5, 4.15),
(37,	 '2023-04-06',	 'Diesel',	14,	 3.55),
(38,	 '2023-04-07',	 'Petrol',	75,	 0.32),
(39,	 '2023-04-08',	 'Electric',	16,	 4.20),
(40,	 '2023-04-09',	 'Hybrid',	11.5, 3.80),
(41,	 '2023-04-10',	 'Diesel',	19,	 4.25),
(42,	 '2023-04-11',	 'Petrol',	14.5, 3.60),
(43,	 '2023-04-12',	 'Electric', 80,	 0.35),
(44,	 '2023-04-13',	 'Hybrid',	16.5, 4.30),
(45,	 '2023-04-14',	 'Diesel',	12,	 3.85),
(46,	 '2023-04-15',	 'Petrol',	19.5, 4.35),
(47,	 '2023-04-16',	 'Electric', 15, 3.65),
(48,	 '2023-04-17',	 'Hybrid',	85,	 0.37),
(49,	 '2023-04-18',	 'Diesel',	17,	 4.40),
(50,	 '2023-04-19',	 'Petrol',	12.5, 3.90);


-- Query 0: Total Fuel Expenditure Per Vehicle Type
 
SELECT V.Vehicle_Type, SUM(F.TotalCost) AS TotalFuelCost
FROM Fuel_Logs F
JOIN Vehicles V ON F.VehicleID = V.VehicleID
GROUP BY V.Vehicle_Type;



-- Query 1: Total Fuel Consumption by Vehicle Type

SELECT V.Vehicle_Type, SUM(F.Quantity) AS TotalFuelConsumed
FROM Fuel_Logs F
JOIN Vehicles V ON F.VehicleID = V.VehicleID
GROUP BY V.Vehicle_Type;


-- Query 2: Most Common Vehicle Color - Determine the most common vehicle color in the database.
SELECT Color, COUNT(*) AS VehicleCount
FROM Vehicles
GROUP BY Color
ORDER BY VehicleCount DESC
LIMIT 1;

-- Query 3: Purpose: Count the total number of traffic violations for each vehicle type.
SELECT V.Vehicle_Type, COUNT(T.ViolationID) AS TotalViolations
FROM Traffic_Violations T
JOIN Vehicles V ON T.VehicleID = V.VehicleID
GROUP BY V.Vehicle_Type;

-- Query 4 Purpose: Identify vehicle types that currently have no insurance policies.
SELECT DISTINCT V.Vehicle_Type
FROM Vehicles V
LEFT JOIN Insurance_Policies IP ON V.VehicleID = IP.VehicleID
WHERE IP.Insurance_ID IS NULL;

-- Query 5: Calculate the average horsepower for each vehicle type.
SELECT V.Vehicle_Type, AVG(S.Horsepower) AS AvgHorsepower
FROM Vehicle_Specifications S
JOIN Vehicles V ON S.VehicleID = V.VehicleID
GROUP BY V.Vehicle_Type;

-- Query 6: Sum the total payments received grouped by month.
SELECT YEAR(PaymentDate) AS Year, MONTH(PaymentDate) AS Month, SUM(Amount) AS TotalPayments
FROM Payment_History
GROUP BY Year, Month;

-- Query 7: Find the most common types of services performed on vehicles.
SELECT ServiceType, COUNT(*) AS ServiceCount
FROM Maintenance_Records
GROUP BY ServiceType
ORDER BY ServiceCount DESC;

-- Query 8: Sum the total claim amounts processed by each insurance company.
SELECT IC.companyname, SUM(C.ClaimAmount) AS TotalClaimAmount
FROM Insurance_Claims C
JOIN insurance_policies IP ON C.PolicyID = IP.insurance_id
JOIN insurancecompany IC ON IP.insurancecompanyid = IC.insurancecompanyid
GROUP BY IC.companyname;

-- Query 9: Calculate the total cost spent on fuel by month.
SELECT YEAR(Date) AS Year, MONTH(Date) AS Month, SUM(TotalCost) AS TotalFuelCost
FROM Fuel_Logs
GROUP BY Year, Month;

-- Query 10: List all vehicles whose insurance policies have expired.
SELECT V.VehicleID, V.Make, V.Model, IP.end_date
FROM insurance_policies IP
JOIN Vehicles V ON IP.vehicleid = V.VehicleID
WHERE IP.end_date < CURRENT_DATE;

-- Query 11: Determine the average fine amount for traffic violations, grouped by vehicle type.
SELECT V.Vehicle_Type, AVG(T.Penalty) AS AvgFineAmount
FROM Traffic_Violations T
JOIN Vehicles V ON T.VehicleID = V.VehicleID
GROUP BY V.Vehicle_Type;

-- Query 12: List all service providers for each type of service offered.
SELECT ServiceType, GROUP_CONCAT(ProviderName) AS Providers
FROM Service_Providers
GROUP BY ServiceType;

-- Query 13: Calculate the total insurance claim amount filed for each vehicle type.
SELECT V.Vehicle_Type, SUM(C.ClaimAmount) AS TotalClaims
FROM Insurance_Claims C
JOIN Vehicles V ON C.VehicleID = V.VehicleID
GROUP BY V.Vehicle_Type;

-- Query 14: Query to find all vehicles with their current owner and insurance details
SELECT 
v.VehicleID, v.LicensePlate, v.Make, v.Model, o.FirstName, o.LastName, ip.coverage_type, ic.companyname
FROM Vehicles v
INNER JOIN vehicle_ownership vo ON v.VehicleID = vo.VehicleId
INNER JOIN Owners o ON vo.OwnerID = o.OwnerID
LEFT JOIN insurance_policies ip ON v.VehicleID = ip.vehicleid
LEFT JOIN insurancecompany ic ON ip.insurancecompanyid = ic.insurancecompanyid
WHERE vo.sale_date IS NULL;

-- Query 15: Query to find all owners and any vehicles they might own
SELECT 
    o.OwnerID, o.FirstName, o.LastName, o.Email,
    v.VehicleID, v.LicensePlate, v.Make, v.Model
FROM Owners o
RIGHT JOIN vehicle_ownership vo ON o.OwnerID = vo.OwnerID
LEFT JOIN Vehicles v ON vo.VehicleID = v.VehicleID;


-- Query 16: Comprehensive Overview of Vehicle and Owner Associations in Management System
SELECT 
    v.VehicleID, v.LicensePlate, v.Make, v.Model,
    o.FirstName, o.LastName, o.Email
FROM Vehicles v
LEFT JOIN vehicle_ownership vo ON v.VehicleID = vo.VehicleID
LEFT JOIN Owners o ON vo.OwnerID = o.OwnerID

UNION

SELECT 
    v.VehicleID, v.LicensePlate, v.Make, v.Model,
    o.FirstName, o.LastName, o.Email
FROM Owners o
LEFT JOIN vehicle_ownership vo ON o.OwnerID = vo.OwnerID
LEFT JOIN Vehicles v ON vo.VehicleID = v.VehicleID;

-- Functions

-- Function-1: Function to check whether a vehicle is currently insured or not
DELIMITER $$
CREATE FUNCTION InsuranceStatus(p_VehicleID INT)
RETURNS VARCHAR(20)
READS SQL DATA
BEGIN
    DECLARE status VARCHAR(20);
    IF EXISTS (
        SELECT 1
        FROM insurance_policies
        WHERE vehicleid = p_VehicleID
        AND end_date >= CURRENT_DATE
    ) THEN
        SET status = 'Insured';
    ELSE
        SET status = 'Not Insured';
    END IF;
    RETURN status;
END$$

SELECT InsuranceStatus(8);

-- Function-2: function to calculate the total fines for a given VehicleID.

DELIMITER $$
CREATE FUNCTION TotalParkingFines(p_VehicleID INT)
RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
    DECLARE totalFines DECIMAL(10,2);
    SELECT IFNULL(SUM(FineAmount), 0) INTO totalFines
    FROM Parking_Tickets
    WHERE VehicleID = p_VehicleID;
    RETURN totalFines;
END$$
DELIMITER ;

SELECT TotalParkingFines(7);


-- Function-3: Function to retrieve the latest service date and service type based on the vehicle ID

DELIMITER $$

CREATE FUNCTION LatestServiceDetails(p_VehicleID INT)
RETURNS VARCHAR(255)
READS SQL DATA
BEGIN
    DECLARE latestServiceDetails VARCHAR(255);
    
    SELECT CONCAT('Latest Service Date: ', ServiceDate, ', Latest Service Type: ', ServiceType)
    INTO latestServiceDetails
    FROM Maintenance_Records
    WHERE VehicleID = p_VehicleID
    ORDER BY ServiceDate DESC
    LIMIT 1;
    
    RETURN latestServiceDetails;
END$$

SELECT latestServiceDetails(20);


-- Function-4:  Calculate the total penalty for a given VehicleID using the Traffic_Violations table.

DELIMITER //

CREATE FUNCTION CalculateTotalPenalty(vehicle_id INT) 
RETURNS DECIMAL(10, 2) 
DETERMINISTIC
BEGIN
    DECLARE total_penalty DECIMAL(10, 2);
    
    SELECT SUM(Penalty) INTO total_penalty
    FROM Traffic_Violations
    WHERE VehicleID = vehicle_id;
    
    RETURN total_penalty;
END;

SELECT CalculateTotalPenalty(4) AS TotalPenaltyForVehicle;

-- Function 5: Function to Get service details By VehicleID

DELIMITER $$

DROP FUNCTION IF EXISTS LatestServiceDetails;

CREATE FUNCTION LatestServiceDetails(p_VehicleID INT)
RETURNS VARCHAR(255)
READS SQL DATA
BEGIN
    DECLARE latestServiceDetails VARCHAR(255);
    
    SELECT CONCAT('Latest Service Date: ', ServiceDate, ', Latest Service Type: ', ServiceType)
    INTO latestServiceDetails
    FROM Maintenance_Records
    WHERE VehicleID = p_VehicleID
    ORDER BY ServiceDate DESC
    LIMIT 1;
    
    RETURN latestServiceDetails;
END$$
DELIMITER ;

SELECT LatestServiceDetails(10);


-- Function 6: Function To retrieve vehicle specifications based on the VIN (Vehicle Identification Number)

DELIMITER $$

CREATE FUNCTION GetVehicleSpecificationsByVehicleID(vehicle_id INT)
RETURNS VARCHAR(1000)
DETERMINISTIC
BEGIN
    DECLARE specs_details VARCHAR(1000);

    SELECT CONCAT('Vehicle Type: ', vs.Vehicle_Type, 
                  ', Gas Type: ', vs.GasType, 
                  ', Engine Size: ', vs.EngineSize, 
                  ', Horsepower: ', vs.Horsepower) 
    INTO specs_details
    FROM Vehicle_Specifications vs
    WHERE vs.VehicleID = vehicle_id;

    IF specs_details IS NULL THEN
        SET specs_details = 'No specifications found for the given VehicleID.';
    END IF;

    RETURN specs_details;
END$$

DELIMITER ;


SELECT GetVehicleSpecificationsByVehicleID(01);


-- Function 7 Function to get vehicle registration details with a given VehicleID

DELIMITER //
CREATE FUNCTION GetVehicleRegistrationDetailsByVIN(vin_input VARCHAR(17))
RETURNS VARCHAR(500)
READS SQL DATA
BEGIN
    DECLARE result VARCHAR(500);
    SELECT CONCAT('VehicleID: ', vr.vehicleid, ', LicensePlate: ', v.LicensePlate,
                  ', RegistrationType: ', vr.registration_type, ', RegistrationStatus: ', vr.registration_status,
                  ', StateOfRegistration: ', vr.state_of_registration)
    INTO result
    FROM Vehicles v
    JOIN vehicle_registration vr ON v.VehicleID = vr.vehicleid
    WHERE v.VIN = vin_input;
    RETURN result;
END //

SELECT GetVehicleRegistrationDetailsByVIN("5J6RM4H74EL000005");



-- SOPs

/* 1) Procedure: ClearViolation
Description: Clears a traffic violation by setting its penalty to 0. */


DELIMITER //
 
CREATE PROCEDURE ClearViolation(IN p_ViolationID INT)
BEGIN
    DECLARE owner_id INT;
    -- Get the OwnerID associated with the violation
    SELECT VehicleID INTO owner_id FROM Traffic_Violations WHERE ViolationID = p_ViolationID;
    -- Check if the violation exists and is associated with an owner
    IF owner_id IS NOT NULL THEN
        -- Mark the violation as cleared by setting the Penalty to 0
        UPDATE Traffic_Violations SET Penalty = 0 WHERE ViolationID = p_ViolationID;
        SELECT 'Violation cleared successfully.' AS Message;
    ELSE
        SELECT 'Violation not found or not associated with an owner.' AS Message;
    END IF;
END //
 
DELIMITER ;
 
CALL ClearViolation(50);
SELECT * FROM traffic_violations;
 
select * from Traffic_Violations;

/*
2) Procedure: GetVehicleInsuranceHistory
Description: Retrieves insurance history for a specified vehicle, including insurance policies and associated claims.
*/

DELIMITER //
 
CREATE PROCEDURE GetVehicleInsuranceHistory(IN p_VehicleID INT)
BEGIN
    -- Declare variables to handle end of records in cursor
    DECLARE done INT DEFAULT FALSE;
 
    -- Declare variables to hold insurance policy details
    DECLARE insurance_id VARCHAR(10);
    DECLARE coverage_type VARCHAR(50);
    DECLARE policy_holder_name VARCHAR(50);
    DECLARE start_date DATE;
    DECLARE end_date DATE;
    DECLARE claimid INT;
    DECLARE claim_date DATE;
    DECLARE claim_amount DECIMAL(10, 2);
    DECLARE status VARCHAR(50);
    DECLARE incident_description TEXT;
 
    -- Cursor for retrieving insurance policies associated with the vehicle
    DECLARE insurance_cursor CURSOR FOR 
        SELECT 
            ip.insurance_id,
            ip.coverage_type,
            ip.policy_holder_name,
            ip.start_date,
            ip.end_date,
            ic.ClaimID,
            ic.ClaimDate,
            ic.ClaimAmount,
            ic.Status,
            ic.IncidentDescription
        FROM insurance_policies AS ip
        LEFT JOIN Insurance_Claims AS ic ON ip.insurance_id = ic.PolicyID
        WHERE ip.vehicleid = p_VehicleID;
 
    -- Declare a condition to handle zero rows fetched
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
 
    -- Open the cursor
    OPEN insurance_cursor;
 
    -- Loop through the records
    insurance_loop: LOOP
        -- Fetch the next record
        FETCH insurance_cursor INTO 
            insurance_id,
            coverage_type,
            policy_holder_name,
            start_date,
            end_date,
            claimid,
            claim_date,
            claim_amount,
            status,
            incident_description;
 
        -- Check if no more records
        IF done THEN
            LEAVE insurance_loop;
        END IF;
 
        -- Print or process the record as needed
        SELECT 
            insurance_id,
            coverage_type,
            policy_holder_name,
            start_date,
            end_date,
            claimid,
            claim_date,
            claim_amount,
            status,
            incident_description;
    END LOOP;
 
    -- Close the cursor
    CLOSE insurance_cursor;
 
    -- Check if no records were fetched
    IF NOT done THEN
        -- If no records were fetched, print custom message
        SELECT 'Data not found in the record';
    END IF;
END //

DELIMITER ;
 
call GetVehicleInsuranceHistory(2);

SELECT * FROM INSURANCE_CLAIMS;

/*
 Procedure 3 : ListVehiclesByTypeWithPagination
Description: Procedure to retrieve a paginated list of vehicles based on a specified vehicle type. 
*/

DELIMITER $$
CREATE PROCEDURE ListVehiclesByTypeWithPagination(
    IN _Vehicle_Type VARCHAR(50), 
    IN _Offset INT, 
    IN _Limit INT
)
BEGIN
    SELECT * FROM Vehicles 
    -- select the vehicle type
    WHERE Vehicle_Type = _Vehicle_Type
    ORDER BY VehicleID
    LIMIT _Offset, _Limit;
END $$
DELIMITER ;

CALL ListVehiclesByTypeWithPagination('SUV', 0, 10);

/*
 Procedure 4 : AddNewVehicleWithValidation
 Description : Procedure to add a new vehicle to the database
*/

DELIMITER $$
CREATE PROCEDURE AddNewVehicleWithValidation(
    IN _VIN VARCHAR(17), 
    IN _LicensePlate VARCHAR(10), 
    IN _Make VARCHAR(50), 
    IN _Model VARCHAR(50), 
    IN _Year YEAR, 
    IN _Color VARCHAR(30), 
    IN _Vehicle_Type VARCHAR(50)
)
BEGIN
    DECLARE vehicle_exists INT;

    SELECT COUNT(*) INTO vehicle_exists FROM Vehicles 
    WHERE VIN = _VIN OR LicensePlate = _LicensePlate;
-- if vehicle does not exist it will take the data
    IF vehicle_exists = 0 THEN
        INSERT INTO Vehicles (VIN, LicensePlate, Make, Model, Year, Color, Vehicle_Type)
        VALUES (_VIN, _LicensePlate, _Make, _Model, _Year, _Color, _Vehicle_Type);
    ELSE
    -- if vehicle exist it will give error message
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: VIN or License Plate already exists.';
    END IF;
END $$
DELIMITER ;

CALL AddNewVehicleWithValidation('JH4TB2H46CC011200', '1ZVAP8AM2', 'Honda', 'Civic', 2020, 'Black', 'Sedan');
select * from vehicles

/*
Procedure 5 : CountVehiclesByColor
Description: Procedure to retrieve a count of vehicles grouped by their colors 
*/

DELIMITER $$

CREATE PROCEDURE CountVehiclesByColor(
    IN _Color VARCHAR(30)
)
BEGIN
    SELECT Color, COUNT(*) AS Count
    FROM Vehicles
    WHERE Color = _Color
    GROUP BY Color;
END$$

DELIMITER ;

CALL CountVehiclesByColor('GREEN');


-- Triggers

-- Trigger1 This trigger will automatically set the PaymentDate to the current date before inserting a new payment record.

-- Create the trigger
DELIMITER //

CREATE TRIGGER before_insert_payment
BEFORE INSERT ON Payment_History
FOR EACH ROW
BEGIN
    SET NEW.PaymentDate = CURDATE();
END;
//

DELIMITER ;

select * from owners;
INSERT INTO Owners (FirstName, LastName, Address, ZipCode, State, PhoneNumber, Email, PurchaseDate, SaleDate)
 VALUES ('Rian', 'ge', '123 Main St', '12345', 'NY', '555-1294', 'brad@example.com', '2020-01-01', NULL);
-- INSERT INTO Payment_History (OwnerID, Amount, Mode_of_payment, Payment_Reference_number)
-- VALUES (57, 1000.00, 'Credit Card', '1234567890');
-- Select data from Payment_History table
SELECT * FROM Payment_History;


-- Trigger 2 This trigger will prevent updates to the Make, Model, Year, and Vehicle_Type columns if there are associated parking tickets for the vehicle being updated.:

DELIMITER //

CREATE TRIGGER prevent_vehicle_update
BEFORE UPDATE ON Vehicles
FOR EACH ROW
BEGIN
    DECLARE ticket_count INT;
    -- Check if there are any parking tickets associated with the vehicle
    SELECT COUNT(*) INTO ticket_count
    FROM Parking_Tickets
    WHERE VehicleID = NEW.VehicleID;
    -- If there are associated tickets, prevent updates to certain columns
    IF ticket_count > 0 THEN
        IF OLD.Make != NEW.Make THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Cannot update Make for vehicles with parking tickets';
        END IF;
        
        IF OLD.Model != NEW.Model THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Cannot update Model for vehicles with parking tickets';
        END IF;
        
        IF OLD.Year != NEW.Year THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Cannot update Year for vehicles with parking tickets';
        END IF;
        
        IF OLD.Vehicle_Type != NEW.Vehicle_Type THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Cannot update Vehicle_Type for vehicles with parking tickets';
        END IF;
    END IF;
END//

DELIMITER ;

select * from vehicles;
 
UPDATE Vehicles SET Make = 'Honda' WHERE VehicleID = 34;
-- This update should fail because the vehicle has associated parking tickets


-- Trigger 3 the trigger after any update on the Vehicles table, a record is inserted into the Maintenance_Records table with the ServiceDate set to the current date and the ServiceType indicating that the vehicle was updated.
DELIMITER $$
CREATE TRIGGER after_vehicle_update
AFTER UPDATE ON Vehicles
FOR EACH ROW
BEGIN
    INSERT INTO Maintenance_Records (VehicleID, ServiceDate, ServiceType)
    VALUES (OLD.VehicleID, CURDATE(), 'Vehicle Updated');
END$$
DELIMITER ;

-- Demonstrate the trigger with select statements

-- Updating a vehicle record
UPDATE Vehicles 
SET Color = 'Blue'
WHERE VehicleID = 50;

-- Selecting records from Maintenance_Records to see if the trigger worked
SELECT * FROM Maintenance_Records;

select * from vehicles;



-- Trigger 4 This trigger will delete corresponding records from the Maintenance_Records table before deleting the vehicle from the Vehicles table to maintain referential integrity.
DELIMITER //
CREATE TRIGGER before_delete_vehicle
BEFORE DELETE ON Vehicles
FOR EACH ROW
BEGIN
    -- Delete corresponding maintenance records
    DELETE FROM Maintenance_Records
    WHERE VehicleID = OLD.VehicleID;
END;
//
DELIMITER ;

-- Delete a vehicle
DELETE FROM Vehicles WHERE VehicleID = 51;
-- Select data from Vehicles and Maintenance_Records after deletion
SELECT * FROM Vehicles;
SELECT * FROM Maintenance_Records;
