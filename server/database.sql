CREATE DATABASE IVMS_DB;

-- create extension if not exists "uuid-ossp"
CREATE TABLE ADMIN (
    ADMIN_ID uuid PRIMARY KEY DEFAULT
    uuid_generate_v4(),
    ADMIN_USERNAME VARCHAR(255) not null,
    ADMIN_NAME VARCHAR(255) not null,
    ADMIN_EMAIL VARCHAR(255) not null,
    ADMIN_PASSWORD VARCHAR (255) not null
);
--a fake user 
INSERT INTO ADMIN (ADMIN_USERNAME, ADMIN_NAME, ADMIN_EMAIL, ADMIN_PASSWORD) VALUES ('hatif123','HATIF', 'hatifmujahid08@gmail.com', '12345678');

CREATE TABLE RETAILER(
    R_ID uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    R_MOBILE_NUM VARCHAR(200),
    INVENTORY_ID INTEGER ,
    R_NAME VARCHAR(200),
    R_USERNAME VARCHAR(200),
    R_PASSWORD VARCHAR(200),
    R_ADDRESS VARCHAR(500)
);

-- INVENTORY_ID NUM FOREIGN KEY REFERENCES INVENTORY (INVENTORY_ID),


-- CREATE TABLE INVENTORY(
--     INVENTORY_ID SERIAL PRIMARY KEY,
--     INVENTORY_COUNT NUM,
--     INTVENTORY_TYPE VARCHAR(20),
--     INVENTORY_DESCRIPTION VARCHAR(200)
-- );

-- CREATE TABLE STOCK (
--     STOCK_ID SERIAL PRIMARY KEY,
--     STOCK_ITEMS VARCHAR(500),
--     STOCK_NUMBER NUM, 
--     STOCK_TYPE VARCHAR(200),
--     STOCK_DESC VARCAHR(500)
-- );
-- CREATE TABLE PURCHASING(
--     PURCHASING_ID SERIAL PRIMARY KEY,
--     CUSTOMER_ID NUM FOREIGN KEY REFRENCES CUSTOMER(C_ID),
--     PURCHASE_DESCRIPTION VARCHAR(300),
--     PURCHASE_AMOUNT DOUBLE, 
--     PURCHASE_DESC VARCAR(500)
-- );
CREATE TABLE CUSTOMER (
    C_ID SERIAL PRIMARY KEY,
    C_MOBILE_NUM VARCHAR(200),
    C_NAME VARCHAR(200),
    C_USERNAME VARCHAR(200),
    C_PASSWORD VARCHAR(200),
    C_ADDRESS VARCHAR(500),
    C_EMAIL VARCHAR(200)
);
