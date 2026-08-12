-- ROS — Restaurant Operations System
-- DDL Script (PostgreSQL)
-- Creates all 15 tables in dependency order with PK and FK constraints.
-- Compatible with PostgreSQL.

SET session_replication_role = 'replica';

DROP TABLE IF EXISTS "Banking" CASCADE;
DROP TABLE IF EXISTS "Cash_Up" CASCADE;
DROP TABLE IF EXISTS "Deliveries" CASCADE;
DROP TABLE IF EXISTS "Expenses" CASCADE;
DROP TABLE IF EXISTS "Sales" CASCADE;
DROP TABLE IF EXISTS "Orders" CASCADE;
DROP TABLE IF EXISTS "Users" CASCADE;
DROP TABLE IF EXISTS "Restaurants" CASCADE;
DROP TABLE IF EXISTS "Clients" CASCADE;
DROP TABLE IF EXISTS "Subscriptions" CASCADE;
DROP TABLE IF EXISTS "Roles" CASCADE;
DROP TABLE IF EXISTS "Departments" CASCADE;
DROP TABLE IF EXISTS "TaxInfo" CASCADE;
DROP TABLE IF EXISTS "Currencies" CASCADE;
DROP TABLE IF EXISTS "Countries" CASCADE;

SET session_replication_role = 'origin';

-- Countries
CREATE TABLE "Countries" (
  "lang" TEXT NOT NULL,
  "lan_name" TEXT NOT NULL,
  "country_alpha2_code" TEXT NOT NULL,
  "country_code" TEXT NOT NULL,
  "country_name" TEXT NOT NULL,
  PRIMARY KEY ("country_alpha2_code")
);

-- Currencies
CREATE TABLE "Currencies" (
  "currency_id" INTEGER NOT NULL,
  "currency_type" TEXT NOT NULL,
  "currency_symbol" TEXT NOT NULL,
  PRIMARY KEY ("currency_id")
);

-- TaxInfo
CREATE TABLE "TaxInfo" (
  "tax_type_id" INTEGER NOT NULL,
  "country" TEXT NOT NULL,
  "Tax_Type" TEXT NOT NULL,
  "tax_percentage" NUMERIC(5,4) NOT NULL,
  PRIMARY KEY ("tax_type_id")
);

-- Departments
CREATE TABLE "Departments" (
  "Department_id" INTEGER NOT NULL,
  "department_name" TEXT NOT NULL,
  "department_code" TEXT NOT NULL,
  PRIMARY KEY ("Department_id")
);

-- Roles
CREATE TABLE "Roles" (
  "id" INTEGER NOT NULL,
  "name" TEXT NOT NULL,
  "guard_name" TEXT NOT NULL,
  "created_at" TIMESTAMP,
  "updated_at" TIMESTAMP,
  PRIMARY KEY ("id")
);

-- Subscriptions
CREATE TABLE "Subscriptions" (
  "subscription_id" INTEGER NOT NULL,
  "display_name" TEXT NOT NULL,
  "subscription_name" TEXT NOT NULL,
  "product_code" TEXT NOT NULL,
  "subscription_active" BOOLEAN NOT NULL,
  "subscription_code" TEXT NOT NULL,
  "description" TEXT,
  "Cost" NUMERIC(8,2) NOT NULL,
  "No Of Users" INTEGER NOT NULL,
  "Frequency" TEXT,
  PRIMARY KEY ("subscription_id")
);

-- Clients
CREATE TABLE "Clients" (
  "client_id" INTEGER NOT NULL,
  "client_name" TEXT NOT NULL,
  "country" TEXT NOT NULL,
  "currency_id" INTEGER NOT NULL,
  "subscription_id" INTEGER NOT NULL,
  "activation_date" DATE NOT NULL,
  "inactivation_date" DATE,
  "status" TEXT NOT NULL,
  "contact_email" TEXT NOT NULL,
  "contact_phone" TEXT NOT NULL,
  PRIMARY KEY ("client_id"),
  CONSTRAINT "fk_Clients_currency_id" FOREIGN KEY ("currency_id") REFERENCES "Currencies" ("currency_id"),
  CONSTRAINT "fk_Clients_subscription_id" FOREIGN KEY ("subscription_id") REFERENCES "Subscriptions" ("subscription_id")
);

-- Restaurants
CREATE TABLE "Restaurants" (
  "restaurant_id" INTEGER NOT NULL,
  "restaurant_name" TEXT NOT NULL,
  "client_id" INTEGER NOT NULL,
  "country" TEXT NOT NULL,
  "currency_id" INTEGER NOT NULL,
  "city" TEXT NOT NULL,
  "address" TEXT NOT NULL,
  "post_code" TEXT NOT NULL,
  "cuisine_type" TEXT NOT NULL,
  "opening_date" DATE NOT NULL,
  PRIMARY KEY ("restaurant_id"),
  CONSTRAINT "fk_Restaurants_client_id" FOREIGN KEY ("client_id") REFERENCES "Clients" ("client_id"),
  CONSTRAINT "fk_Restaurants_currency_id" FOREIGN KEY ("currency_id") REFERENCES "Currencies" ("currency_id")
);

-- Users
CREATE TABLE "Users" (
  "user_id" INTEGER NOT NULL,
  "user_name" TEXT NOT NULL,
  "email" TEXT NOT NULL,
  "password" TEXT NOT NULL,
  "phone" TEXT NOT NULL,
  "is_active" BOOLEAN NOT NULL,
  "client_id" INTEGER NOT NULL,
  "restaurant_id" INTEGER NOT NULL,
  "role_id" INTEGER NOT NULL,
  "department_id" INTEGER NOT NULL,
  "subscription_id" INTEGER NOT NULL,
  "activation_date" DATE NOT NULL,
  "inactivation_date" DATE,
  PRIMARY KEY ("user_id"),
  CONSTRAINT "fk_Users_client_id" FOREIGN KEY ("client_id") REFERENCES "Clients" ("client_id"),
  CONSTRAINT "fk_Users_restaurant_id" FOREIGN KEY ("restaurant_id") REFERENCES "Restaurants" ("restaurant_id"),
  CONSTRAINT "fk_Users_role_id" FOREIGN KEY ("role_id") REFERENCES "Roles" ("id"),
  CONSTRAINT "fk_Users_department_id" FOREIGN KEY ("department_id") REFERENCES "Departments" ("Department_id"),
  CONSTRAINT "fk_Users_subscription_id" FOREIGN KEY ("subscription_id") REFERENCES "Subscriptions" ("subscription_id")
);

-- Orders
CREATE TABLE "Orders" (
  "order_id" INTEGER NOT NULL,
  "restaurant_id" INTEGER NOT NULL,
  "order_date" DATE NOT NULL,
  "order_time" TIME NOT NULL,
  "order_type" TEXT NOT NULL,
  "drinks_amount" NUMERIC(10,2) NOT NULL,
  "food_amount" NUMERIC(10,2) NOT NULL,
  "other_payment" NUMERIC(10,2) NOT NULL,
  "service_charges" NUMERIC(10,2) NOT NULL,
  "delivery_charges" NUMERIC(10,2) NOT NULL,
  "order_amount" NUMERIC(10,2) NOT NULL,
  "tax_amount" NUMERIC(10,2) NOT NULL,
  "order_total" NUMERIC(10,2) NOT NULL,
  PRIMARY KEY ("order_id"),
  CONSTRAINT "fk_Orders_restaurant_id" FOREIGN KEY ("restaurant_id") REFERENCES "Restaurants" ("restaurant_id")
);

-- Sales
CREATE TABLE "Sales" (
  "sales_id" INTEGER NOT NULL,
  "restaurant_id" INTEGER NOT NULL,
  "creditcard_tip" NUMERIC(4,2) NOT NULL,
  "drinks_payment" NUMERIC(12,2) NOT NULL,
  "food_payment" NUMERIC(12,2) NOT NULL,
  "other_payment" NUMERIC(12,2) NOT NULL,
  "service_charges" NUMERIC(12,2) NOT NULL,
  "delivery_charges" NUMERIC(12,2) NOT NULL,
  "Date" DATE NOT NULL,
  PRIMARY KEY ("sales_id"),
  CONSTRAINT "fk_Sales_restaurant_id" FOREIGN KEY ("restaurant_id") REFERENCES "Restaurants" ("restaurant_id")
);

-- Expenses
CREATE TABLE "Expenses" (
  "expense_id" INTEGER NOT NULL,
  "restaurant_id" INTEGER NOT NULL,
  "bills" NUMERIC(10,2) NOT NULL,
  "vendors" NUMERIC(10,2) NOT NULL,
  "wage advances" NUMERIC(10,2) NOT NULL,
  "repairs" NUMERIC(10,2) NOT NULL,
  "sundries" NUMERIC(10,2) NOT NULL,
  "Exp Date" DATE NOT NULL,
  PRIMARY KEY ("expense_id"),
  CONSTRAINT "fk_Expenses_restaurant_id" FOREIGN KEY ("restaurant_id") REFERENCES "Restaurants" ("restaurant_id")
);

-- Deliveries
CREATE TABLE "Deliveries" (
  "delivery_id" INTEGER NOT NULL,
  "restaurant_id" INTEGER NOT NULL,
  "order_amount" NUMERIC(10,2) NOT NULL,
  "api_amount" NUMERIC(10,2) NOT NULL,
  "match_status" BOOLEAN NOT NULL,
  "name" TEXT NOT NULL,
  "delivery_date" DATE NOT NULL,
  PRIMARY KEY ("delivery_id"),
  CONSTRAINT "fk_Deliveries_restaurant_id" FOREIGN KEY ("restaurant_id") REFERENCES "Restaurants" ("restaurant_id")
);

-- Banking
CREATE TABLE "Banking" (
  "banking_id" INTEGER NOT NULL,
  "banked_total" NUMERIC(12,2) NOT NULL,
  "banking_total" NUMERIC(12,2) NOT NULL,
  "banking_date" DATE NOT NULL,
  "banking_time_indicator" TEXT NOT NULL,
  "reconcile_status" TEXT NOT NULL,
  "restaurant_id" INTEGER NOT NULL,
  "sealed_by" TEXT NOT NULL,
  PRIMARY KEY ("banking_id"),
  CONSTRAINT "fk_Banking_restaurant_id" FOREIGN KEY ("restaurant_id") REFERENCES "Restaurants" ("restaurant_id")
);

-- Cash_Up
CREATE TABLE "Cash_Up" (
  "cashup_id" INTEGER NOT NULL,
  "restaurant_id" INTEGER NOT NULL,
  "bod_amount" NUMERIC(12,2) NOT NULL,
  "sales" NUMERIC(12,2) NOT NULL,
  "expenses" NUMERIC(12,2) NOT NULL,
  "tax" NUMERIC(12,2) NOT NULL,
  "delivery_charges" NUMERIC(12,2) NOT NULL,
  "eod_amount" NUMERIC(12,2) NOT NULL,
  "match_status" BOOLEAN NOT NULL,
  "banking_id" INTEGER NOT NULL,
  "cash_up_date" DATE NOT NULL,
  "cashup_status" TEXT NOT NULL,
  PRIMARY KEY ("cashup_id"),
  CONSTRAINT "fk_Cash_Up_restaurant_id" FOREIGN KEY ("restaurant_id") REFERENCES "Restaurants" ("restaurant_id"),
  CONSTRAINT "fk_Cash_Up_banking_id" FOREIGN KEY ("banking_id") REFERENCES "Banking" ("banking_id")
);

-- End of DDL script
-- Total tables: 15
-- Total rows expected: 840,152