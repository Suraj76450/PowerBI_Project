-- ROS — Restaurant Operations System
-- Data Import Script (PostgreSQL)
-- Loads CSV files into all 15 tables in dependency order using COPY.
-- Adjust the path prefix to match your CSV file location.

COPY "Countries" FROM 'C:/ProgramData/PostgreSQL/csv/Countries.csv' DELIMITER ',' CSV HEADER;
COPY "Currencies" FROM 'C:/ProgramData/PostgreSQL/csv/Currencies.csv' DELIMITER ',' CSV HEADER;
COPY "TaxInfo" FROM 'C:/ProgramData/PostgreSQL/csv/TaxInfo.csv' DELIMITER ',' CSV HEADER;
COPY "Departments" FROM 'C:/ProgramData/PostgreSQL/csv/Departments.csv' DELIMITER ',' CSV HEADER;
COPY "Roles" FROM 'C:/ProgramData/PostgreSQL/csv/Roles.csv' DELIMITER ',' CSV HEADER;
COPY "Subscriptions" FROM 'C:/ProgramData/PostgreSQL/csv/Subscriptions.csv' DELIMITER ',' CSV HEADER;
COPY "Clients" FROM 'C:/ProgramData/PostgreSQL/csv/Clients.csv' DELIMITER ',' CSV HEADER;
COPY "Restaurants" FROM 'C:/ProgramData/PostgreSQL/csv/Restaurants.csv' DELIMITER ',' CSV HEADER;
COPY "Users" FROM 'C:/ProgramData/PostgreSQL/csv/Users.csv' DELIMITER ',' CSV HEADER;
COPY "Orders" FROM 'C:/ProgramData/PostgreSQL/csv/Orders.csv' DELIMITER ',' CSV HEADER;
COPY "Sales" FROM 'C:/ProgramData/PostgreSQL/csv/Sales.csv' DELIMITER ',' CSV HEADER;
COPY "Expenses" FROM 'C:/ProgramData/PostgreSQL/csv/Expenses.csv' DELIMITER ',' CSV HEADER;
COPY "Deliveries" FROM 'C:/ProgramData/PostgreSQL/csv/Deliveries.csv' DELIMITER ',' CSV HEADER;
COPY "Banking" FROM 'C:/ProgramData/PostgreSQL/csv/Banking.csv' DELIMITER ',' CSV HEADER;
COPY "Cash_Up" FROM 'C:/ProgramData/PostgreSQL/csv/Cash_Up.csv' DELIMITER ',' CSV HEADER;
