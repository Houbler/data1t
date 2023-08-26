CREATE TABLE IF NOT EXISTS brand (
    brand_id SERIAL PRIMARY KEY,
    brand_name VARCHAR(255) NOT NULL
    );

CREATE TABLE IF NOT EXISTS model (
    model_id SERIAL PRIMARY KEY,
    model_name VARCHAR(255) NOT NULL
    );

CREATE TABLE IF NOT EXISTS category (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
    );

CREATE TABLE IF NOT EXISTS promo_date (
    promo_date_id SERIAL PRIMARY KEY,
    start_date_promo DATE NOT NULL,
    end_date_promo DATE NOT NULL
    );

CREATE TABLE IF NOT EXISTS buyer (
    buyer_id SERIAL PRIMARY KEY,
    buyers_name VARCHAR(255) NOT NULL,
    gender VARCHAR(255) NOT NULL,
    birth_date DATE NOT NULL
    );

CREATE TABLE IF NOT EXISTS product (
    product_id SERIAL PRIMARY KEY,
    brand_id INT NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id) ON DELETE SET NULL,
    model_id INT NOT NULL,
    FOREIGN KEY (model_id) REFERENCES model(model_id) ON DELETE SET NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(category_id) ON DELETE SET NULL,
    product_name VARCHAR(255) NOT NULL,
    cost NUMERIC NOT NULL
    );

CREATE TABLE IF NOT EXISTS promos_info (
    unique_id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id) ON DELETE SET NULL,
    promo_date_id INT NOT NULL,
    FOREIGN KEY (promo_date_id) REFERENCES promo_date(promo_date_id) ON DELETE SET NULL,
    percent NUMERIC NOT NULL
    );

CREATE TABLE IF NOT EXISTS buyers_account (
    account_id SERIAL PRIMARY KEY,
    buyer_id INT NOT NULL,
    FOREIGN KEY (buyer_id) REFERENCES buyer(buyer_id) ON DELETE SET NULL,
    cookies VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL
    );

CREATE TABLE IF NOT EXISTS sale_fact (
    order_id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id) ON DELETE SET NULL,
    account_id INT NOT NULL,
    FOREIGN KEY (account_id) REFERENCES buyers_account(account_id) ON DELETE SET NULL,
    amount INT NOT NULL,
    order_time DATE NOT NULL,
    sum NUMERIC NOT NULL,
    cookies VARCHAR(255) NOT NULL
    );