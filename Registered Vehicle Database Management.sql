/* CREATE DATABASE Registered_Vehicle_Management;
USE  Registered_Vehicle_Management; */

-- Creating the 'Vehicles' table
CREATE TABLE Vehicles (
    VehicleID INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17) UNIQUE NOT NULL,
    MakeID INT,
    ModelID INT,
    Year YEAR,
    Color VARCHAR(50)
);

INSERT INTO Vehicles (VIN, MakeID, ModelID, Year, Color) VALUES
('1HGCM82633A004352', 1, 1, 2003, 'Blue'),
('1HGBH41JXMN109186', 2, 5, 1996, 'Red'),
('2HGES267X5H585495', 3, 9, 2005, 'Black'),
('JH4KA7660MC000184', 4, 13, 1991, 'Silver'),
('1NXBR32E86Z757674', 5, 17, 2006, 'Green'),
('2T1KR32E13C042657', 1, 1, 2003, 'Grey'),
('JHMCM82633A004352', 2, 5, 2004, 'White'),
('1HGBH41JXMN109286', 3, 9, 1997, 'Maroon'),
('2HGES267X5H585425', 4, 13, 2005, 'Navy'),
('JH4KA7660MC000174', 5, 17, 1992, 'Yellow');

-- Creating the 'Owners' table
CREATE TABLE Owners (
    OwnerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255)
);

-- Insert sample data into the 'Owners' table
INSERT INTO Owners (Name, Address) VALUES
('Raj Patel', '402 Lotus Court, Mumbai, Maharashtra'),
('Priya Kumar', '17 Jasmine Lane, Bengaluru, Karnataka'),
('Amit Singh', '259 Mango Avenue, New Delhi, Delhi'),
('Anita Desai', '88 River Road, Kolkata, West Bengal'),
('Vijay Gupta', '115 Coconut Grove, Chennai, Tamil Nadu'),
('Neha Sharma', '500 Sapphire Blvd, Hyderabad, Telangana'),
('Arjun Reddy', '789 Palm Street, Kochi, Kerala'),
('Pooja Mehta', '321 Sandalwood Circle, Jaipur, Rajasthan'),
('Sanjay Joshi', '56 Rosewood Drive, Chandigarh, Punjab'),
('Deepika Rao', '1001 Tamarind Loop, Panaji, Goa');


-- Creating the 'Vehicle_Ownership' table
CREATE TABLE Vehicle_Ownership (
    VehicleID INT,
    OwnerID INT,
    PurchaseDate DATE,
    SaleDate DATE,
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID),
    FOREIGN KEY (OwnerID) REFERENCES Owners(OwnerID)
);

-- Insert sample data into the 'Vehicle_Ownership' table
INSERT INTO Vehicle_Ownership (VehicleID, OwnerID, PurchaseDate, SaleDate) VALUES
(1, 1, '2019-01-15', '2021-03-15'),
(2, 2, '2019-02-20', '2021-04-01'),
(3, 3, '2019-03-30', NULL),
(4, 4, '2019-05-25', NULL),
(5, 5, '2019-07-19', '2021-07-30'),
(6, 6, '2019-08-30', NULL),
(7, 7, '2019-10-10', '2021-09-10'),
(8, 8, '2019-11-15', NULL),
(9, 9, '2020-01-01', '2021-11-15'),
(10, 10, '2020-03-01', NULL);


-- Creating the 'Vehicle_Registration' table
CREATE TABLE Vehicle_Registration (
    RegistrationID INT AUTO_INCREMENT PRIMARY KEY,
    VehicleID INT,
    RegistrationDate DATE,
    ExpirationDate DATE,
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);

-- Insert sample data into the 'Vehicle_Registration' table
INSERT INTO Vehicle_Registration (VehicleID, RegistrationDate, ExpirationDate) VALUES
(1, '2022-01-10', '2023-01-09'),
(2, '2022-02-15', '2023-02-14'),
(3, '2022-03-20', '2023-03-19'),
(4, '2022-04-25', '2023-04-24'),
(5, '2022-05-30', '2023-05-29'),
(6, '2022-06-04', '2023-06-03'),
(7, '2022-07-09', '2023-07-08'),
(8, '2022-08-14', '2023-08-13'),
(9, '2022-09-19', '2023-09-18'),
(10, '2022-10-24', '2023-10-23');


-- Creating the 'Registration_Renewals' table
CREATE TABLE Registration_Renewals (
    RenewalID INT AUTO_INCREMENT PRIMARY KEY,
    RegistrationID INT,
    RenewalDate DATE,
    FOREIGN KEY (RegistrationID) REFERENCES Vehicle_Registration(RegistrationID)
);

-- Insert sample data into the 'Registration_Renewals' table
INSERT INTO Registration_Renewals (RegistrationID, RenewalDate) VALUES
(1, '2023-01-09'),
(2, '2023-02-14'),
(3, '2023-03-19'),
(4, '2023-04-24'),
(5, '2023-05-29'),
(6, '2023-06-03'),
(7, '2023-07-08'),
(8, '2023-08-13'),
(9, '2023-09-18'),
(10, '2023-10-23');

-- Creating the 'Insurance_Policies' table
CREATE TABLE Insurance_Policies (
    PolicyNumber VARCHAR(50) PRIMARY KEY,
    VehicleID INT,
    InsuranceCompanyID INT,
    CoverageDetails TEXT,
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);

-- Insert sample data into the 'Insurance_Policies' table
INSERT INTO Insurance_Policies (PolicyNumber, VehicleID, InsuranceCompanyID, CoverageDetails) VALUES
('POLICY001', 1, 1, 'Comprehensive coverage including collision and theft.'),
('POLICY002', 2, 2, 'Third-party liability only.'),
('POLICY003', 3, 1, 'Comprehensive coverage plus roadside assistance.'),
('POLICY004', 4, 3, 'Collision and comprehensive coverage.'),
('POLICY005', 5, 2, 'Liability, collision, and comprehensive.'),
('POLICY006', 6, 3, 'Third-party liability and theft.'),
('POLICY007', 7, 1, 'Comprehensive coverage with glass protection.'),
('POLICY008', 8, 2, 'Liability and collision coverage.'),
('POLICY009', 9, 3, 'Third-party liability with comprehensive.'),
('POLICY010', 10, 1, 'Full coverage with added uninsured motorist protection.');


-- Creating the 'Insurance_Companies' table
CREATE TABLE Insurance_Companies (
    InsuranceCompanyID INT AUTO_INCREMENT PRIMARY KEY,
    CompanyName VARCHAR(100),
    ContactDetails VARCHAR(255)
);

-- Insert sample data into the 'Insurance_Companies' table with Indian addresses and phone numbers
INSERT INTO Insurance_Companies (CompanyName, ContactDetails) VALUES
('SecureLife Insurance', 'Block A, Connaught Place, New Delhi, 110001, Phone: 011-4567-8901'),
('HappyDrive Insurance', 'Sector 17, Chandigarh, 160017, Phone: 0172-4567-8901'),
('FamilyAuto Insurance', 'Banjara Hills, Hyderabad, Telangana, 500034, Phone: 040-5678-1234'),
('TrustyCar Insurance', 'MG Road, Bengaluru, Karnataka, 560001, Phone: 080-6789-2345'),
('GuardianMotors Insurance', 'Bapu Nagar, Jaipur, Rajasthan, 302015, Phone: 0141-7890-3456'),
('Safeway Insurance', 'Salt Lake City, Kolkata, West Bengal, 700091, Phone: 033-8901-4567'),
('RoadShield Insurance', 'Andheri West, Mumbai, Maharashtra, 400053, Phone: 022-9012-5678'),
('AutoSecure Insurance', 'T Nagar, Chennai, Tamil Nadu, 600017, Phone: 044-0123-6789'),
('PrimeCover Insurance', 'Indira Nagar, Lucknow, Uttar Pradesh, 226016, Phone: 0522-1234-7890'),
('FutureProtect Insurance', 'Whitefield, Bengaluru, Karnataka, 560066, Phone: 080-2345-6789'),
('Dheeraj Insurance', 'No. 15, Sector 44, Gurgaon, Haryana, 122003, Phone: 0124-5678-9012'),
('Bharat Life Insurance', 'Vasant Kunj, New Delhi, 110070, Phone: 011-6789-0123'),
('Sarathi Health Insurance', 'Koregaon Park, Pune, Maharashtra, 411001, Phone: 020-3456-7890'),
('Pragati Vehicle Insurance', 'Gomti Nagar, Lucknow, Uttar Pradesh, 226010, Phone: 0522-4567-8901'),
('Nirmaan Assurance', 'Satellite, Ahmedabad, Gujarat, 380015, Phone: 079-5678-9012');

-- Creating the 'Inspections' table
CREATE TABLE Inspections (
    InspectionID INT AUTO_INCREMENT PRIMARY KEY,
    VehicleID INT,
    InspectionDate DATE,
    Result BOOLEAN,
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);

-- Insert sample data into the 'Inspections' table
INSERT INTO Inspections (VehicleID, InspectionDate, Result) VALUES
(1, '2023-02-15', TRUE),
(2, '2023-02-20', TRUE),
(3, '2023-03-05', FALSE),
(4, '2023-03-12', TRUE),
(5, '2023-04-01', TRUE),
(6, '2023-04-15', FALSE),
(7, '2023-05-10', TRUE),
(8, '2023-05-24', TRUE),
(9, '2023-06-07', FALSE),
(10, '2023-06-21', TRUE);


-- Creating the 'Parking_Tickets' table
CREATE TABLE Parking_Tickets (
    TicketNumber VARCHAR(50) PRIMARY KEY,
    VehicleID INT,
    IssueDate DATE,
    FineAmount DECIMAL(10, 2),
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);

-- Insert sample data into the 'Parking_Tickets' table
INSERT INTO Parking_Tickets (TicketNumber, VehicleID, IssueDate, FineAmount) VALUES
('TKT1001', 1, '2023-01-10', 50.00),
('TKT1002', 2, '2023-02-15', 75.00),
('TKT1003', 3, '2023-03-20', 100.00),
('TKT1004', 4, '2023-04-25', 50.00),
('TKT1005', 5, '2023-05-30', 75.00),
('TKT1006', 6, '2023-06-04', 100.00),
('TKT1007', 7, '2023-07-09', 50.00),
('TKT1008', 8, '2023-08-14', 75.00),
('TKT1009', 9, '2023-09-19', 100.00),
('TKT1010', 10, '2023-10-24', 50.00);


-- Creating the 'Traffic_Violations' table
CREATE TABLE Traffic_Violations (
    ViolationID INT AUTO_INCREMENT PRIMARY KEY,
    VehicleID INT,
    Date DATE,
    Penalty DECIMAL(10, 2),
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);

-- Insert sample data into the 'Traffic_Violations' table
INSERT INTO Traffic_Violations (VehicleID, Date, Penalty) VALUES
(1, '2023-02-15', 200.00),
(2, '2023-02-20', 150.00),
(3, '2023-03-05', 300.00),
(4, '2023-03-15', 250.00),
(5, '2023-03-25', 200.00),
(6, '2023-04-01', 150.00),
(7, '2023-04-10', 300.00),
(8, '2023-04-20', 250.00),
(9, '2023-05-01', 200.00),
(10, '2023-05-15', 150.00);


-- Creating the 'Vehicle_Make_Model' table
CREATE TABLE Vehicle_Make_Model (
    MakeID INT AUTO_INCREMENT PRIMARY KEY,
    ModelID INT,
    MakeName VARCHAR(100),
    ModelName VARCHAR(100)
);

INSERT INTO Vehicle_Make_Model (ModelID, MakeName, ModelName) VALUES
(1, 'Toyota', 'Corolla'),
(2, 'Honda', 'Civic'),
(3, 'Ford', 'Focus'),
(4, 'Hyundai', 'Elantra'),
(5, 'Chevrolet', 'Cruze'),
(6, 'Maruti Suzuki', 'Swift'),
(7, 'Tata', 'Nano'),
(8, 'Mahindra', 'XUV500'),
(9, 'Hyundai', 'i10'),
(10, 'Honda', 'Accord');


-- Creating the 'Vehicle_Types' table
CREATE TABLE Vehicle_Types (
    TypeID INT AUTO_INCREMENT PRIMARY KEY,
    Description VARCHAR(100)
);

INSERT INTO Vehicle_Types (Description) VALUES
('Sedan'),
('SUV'),
('Hatchback'),
('Coupe'),
('Convertible'),
('Electric'),
('Hybrid'),
('Truck'),
('Van'),
('Motorcycle');


-- Creating the 'Vehicle_Specifications' table
CREATE TABLE Vehicle_Specifications (
    SpecID INT AUTO_INCREMENT PRIMARY KEY,
    VehicleID INT,
    EngineSize VARCHAR(100),
    Horsepower INT,
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);

INSERT INTO Vehicle_Specifications (VehicleID, EngineSize, Horsepower) VALUES
(1, '1.8L', 132),
(2, '2.0L', 158),
(3, '2.0L', 160),
(4, '2.0L', 147),
(5, '1.4L', 153),
(6, '1.2L', 83),
(7, '0.6L', 38),
(8, '2.2L', 155),
(9, '1.1L', 68),
(10, '1.5L', 174);


-- Creating the 'Maintenance_Records' table
CREATE TABLE Maintenance_Records (
    RecordID INT AUTO_INCREMENT PRIMARY KEY,
    VehicleID INT,
    ServiceDate DATE,
    ServiceType VARCHAR(100),
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);

INSERT INTO Maintenance_Records (VehicleID, ServiceDate, ServiceType) VALUES
(1, '2023-01-10', 'Oil Change'),
(2, '2023-01-15', 'Tire Rotation'),
(3, '2023-01-20', 'Brake Inspection'),
(4, '2023-01-25', 'Battery Replacement'),
(5, '2023-02-01', 'Air Filter Replacement'),
(6, '2023-02-10', 'Oil Change'),
(7, '2023-02-15', 'Tire Rotation'),
(8, '2023-02-20', 'Brake Inspection'),
(9, '2023-02-25', 'Battery Replacement'),
(10, '2023-03-01', 'Air Filter Replacement');


-- Creating the 'Service_Providers' table
CREATE TABLE Service_Providers (
    ProviderID INT AUTO_INCREMENT PRIMARY KEY,
    ProviderName VARCHAR(100),
    ServiceType VARCHAR(100)
);

INSERT INTO Service_Providers (ProviderName, ServiceType) VALUES
('QuickFix Mechanics', 'General Maintenance'),
('BatteryPlus Services', 'Battery Replacement'),
('TireTown', 'Tire Services'),
('BrakeMasters', 'Brake Services'),
('EcoWash', 'Car Wash'),
('Speedy Oil Change', 'Oil Change'),
('AutoGlass', 'Glass Repair'),
('Detailing Depot', 'Detailing Services'),
('HybridCare', 'Hybrid Vehicle Services'),
('ElectricAuto', 'Electric Vehicle Services');



-- Creating the 'Warranty_Information' table
CREATE TABLE Warranty_Information (
    WarrantyID INT AUTO_INCREMENT PRIMARY KEY,
    VehicleID INT,
    WarrantyTerms TEXT,
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);

INSERT INTO Warranty_Information (VehicleID, WarrantyTerms) VALUES
(1, '3 years or 36000 miles'),
(2, '5 years or 60000 miles'),
(3, '3 years or 36000 miles'),
(4, '5 years or 60000 miles'),
(5, '3 years or 36000 miles'),
(6, '5 years or 60000 miles'),
(7, '2 years or 24000 miles'),
(8, '5 years or 60000 miles'),
(9, '3 years or 36000 miles'),
(10, '5 years or 60000 miles');



-- Creating the 'Payment_History' table
CREATE TABLE Payment_History (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    OwnerID INT,
    Amount DECIMAL(10, 2),
    PaymentDate DATE,
    FOREIGN KEY (OwnerID) REFERENCES Owners(OwnerID)
);

INSERT INTO Payment_History (OwnerID, Amount, PaymentDate) VALUES
(1, 200.00, '2023-01-05'),
(2, 150.00, '2023-01-10'),
(3, 250.00, '2023-01-15'),
(4, 300.00, '2023-01-20'),
(5, 350.00, '2023-01-25'),
(6, 400.00, '2023-02-01'),
(7, 450.00, '2023-02-05'),
(8, 500.00, '2023-02-10'),
(9, 550.00, '2023-02-15'),
(10, 600.00, '2023-02-20');


SHOW tables;

