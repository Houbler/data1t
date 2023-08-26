CREATE TABLE IF NOT EXISTS sales (
    order_id SERIAL PRIMARY KEY,
    order_time DATE NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    cost NUMERIC NOT NULL,
    brand VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    cookies VARCHAR(255) NOT NULL,
    amount NUMERIC NOT NULL
    );
    
CREATE TABLE IF NOT EXISTS user_account_info (
    account_id SERIAL PRIMARY KEY,
    cookies VARCHAR(255) NOT NULL,
    buyers_name VARCHAR(255) NOT NULL,
    gender VARCHAR(7) NOT NULL,
    birth_date DATE NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL
    );

CREATE TABLE IF NOT EXISTS promos (
    promo_id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    start_date_promo DATE NOT NULL,
    end_date_promo DATE NOT NULL,
    percent NUMERIC NOT NULL
    );