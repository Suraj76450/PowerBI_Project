-- ROS — Restaurant Operations System
-- Data Import Script (MySQL)
-- Loads CSV files into all 15 tables in dependency order.
-- Adjust the path prefix to match your CSV file location.
SET GLOBAL local_infile = 1;
SET FOREIGN_KEY_CHECKS = 0;

LOAD DATA LOCAL INFILE 'C:\Users\rajin\OneDrive\Desktop\RA2311004010008 - STEP - June 2026\DEA\17-06 - ROS Project\ROS Project - Generated\ROS_updated\ROS\csv\Countries.csv'
INTO TABLE `Countries`
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\Users\rajin\OneDrive\Desktop\RA2311004010008 - STEP - June 2026\DEA\17-06 - ROS Project\ROS Project - Generated\ROS_updated\ROS\csv\Currencies.csv'
INTO TABLE `Currencies`
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\Users\rajin\OneDrive\Desktop\RA2311004010008 - STEP - June 2026\DEA\17-06 - ROS Project\ROS Project - Generated\ROS_updated\ROS\csv\TaxInfo.csv'
INTO TABLE `TaxInfo`
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\Users\rajin\OneDrive\Desktop\RA2311004010008 - STEP - June 2026\DEA\17-06 - ROS Project\ROS Project - Generated\ROS_updated\ROS\csv\Departments.csv'
INTO TABLE `Departments`
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\Users\rajin\OneDrive\Desktop\RA2311004010008 - STEP - June 2026\DEA\17-06 - ROS Project\ROS Project - Generated\ROS_updated\ROS\csv\Roles.csv'
INTO TABLE `Roles`
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\Users\rajin\OneDrive\Desktop\RA2311004010008 - STEP - June 2026\DEA\17-06 - ROS Project\ROS Project - Generated\ROS_updated\ROS\csv\Subscriptions.csv'
INTO TABLE `Subscriptions`
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\Users\rajin\OneDrive\Desktop\RA2311004010008 - STEP - June 2026\DEA\17-06 - ROS Project\ROS Project - Generated\ROS_updated\ROS\csv\Clients.csv'
INTO TABLE `Clients`
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\Users\rajin\OneDrive\Desktop\RA2311004010008 - STEP - June 2026\DEA\17-06 - ROS Project\ROS Project - Generated\ROS_updated\ROS\csv\Restaurants.csv'
INTO TABLE `Restaurants`
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\Users\rajin\OneDrive\Desktop\RA2311004010008 - STEP - June 2026\DEA\17-06 - ROS Project\ROS Project - Generated\ROS_updated\ROS\csv\Users.csv'
INTO TABLE `Users`
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\Users\rajin\OneDrive\Desktop\RA2311004010008 - STEP - June 2026\DEA\17-06 - ROS Project\ROS Project - Generated\ROS_updated\ROS\csv\Orders.csv'
INTO TABLE `Orders`
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\Users\rajin\OneDrive\Desktop\RA2311004010008 - STEP - June 2026\DEA\17-06 - ROS Project\ROS Project - Generated\ROS_updated\ROS\csv\Sales.csv'
INTO TABLE `Sales`
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\Users\rajin\OneDrive\Desktop\RA2311004010008 - STEP - June 2026\DEA\17-06 - ROS Project\ROS Project - Generated\ROS_updated\ROS\csv\Expenses.csv'
INTO TABLE `Expenses`
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\Users\rajin\OneDrive\Desktop\RA2311004010008 - STEP - June 2026\DEA\17-06 - ROS Project\ROS Project - Generated\ROS_updated\ROS\csv\Deliveries.csv'
INTO TABLE `Deliveries`
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\Users\rajin\OneDrive\Desktop\RA2311004010008 - STEP - June 2026\DEA\17-06 - ROS Project\ROS Project - Generated\ROS_updated\ROS\csv\Banking.csv'
INTO TABLE `Banking`
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\Users\rajin\OneDrive\Desktop\RA2311004010008 - STEP - June 2026\DEA\17-06 - ROS Project\ROS Project - Generated\ROS_updated\ROS\csv\Cash_Up.csv'
INTO TABLE `Cash_Up`
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SET FOREIGN_KEY_CHECKS = 1;
