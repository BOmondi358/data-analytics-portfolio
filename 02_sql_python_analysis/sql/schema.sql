-- SQL schema will be defined here
CREATE TABLE fact_sales (
    order_id VARCHAR(50),
    order_date DATE,
    product VARCHAR(255),
    category VARCHAR(100),
    customer_name VARCHAR(255),
    customer_location VARCHAR(100),
    payment_method VARCHAR(50),
    status VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    total_sales DECIMAL(12,2)
);

CREATE TABLE dim_product (
    product VARCHAR(255) PRIMARY KEY,
    category VARCHAR(100),
    price DECIMAL(10,2)
);

CREATE TABLE dim_customer (
    customer_name VARCHAR(255) PRIMARY KEY,
    customer_location VARCHAR(100)
);

CREATE TABLE dim_payment (
    payment_method VARCHAR(50) PRIMARY KEY
);

CREATE TABLE dim_date (
    order_date DATE PRIMARY KEY,
    year INT,
    month INT,
    day INT
);
