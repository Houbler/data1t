CREATE TABLE IF NOT EXISTS brand (
    brand_id Int32,
    brand_name String
	) ENGINE = PostgreSQL('psql:5432', 'db', 'brand', 'user', 'secret');

CREATE TABLE IF NOT EXISTS model (
    model_id Int32,
    model_name String
    ) ENGINE = PostgreSQL('psql:5432', 'db', 'model', 'user', 'secret');

CREATE TABLE IF NOT EXISTS category (
    category_id Int32,
    category_name String
    ) ENGINE = PostgreSQL('psql:5432', 'db', 'category', 'user', 'secret');

CREATE TABLE IF NOT EXISTS promo_date (
    promo_date_id Int32,
    start_date_promo Date,
    end_date_promo Date
    ) ENGINE = PostgreSQL('psql:5432', 'db', 'promo_date', 'user', 'secret');

CREATE TABLE IF NOT EXISTS buyer (
    buyer_id Int32,
    buyers_name String,
    gender String,
    birth_date Date
    ) ENGINE = PostgreSQL('psql:5432', 'db', 'buyer', 'user', 'secret');

CREATE TABLE IF NOT EXISTS product (
    product_id Int32,
    brand_id Int32,
    model_id Int32,
    category_id Int32,
    product_name String,
    cost Float64
    ) ENGINE = PostgreSQL('psql:5432', 'db', 'product', 'user', 'secret');

CREATE TABLE IF NOT EXISTS promos_info (
    unique_id Int32,
    product_id Int32,
    promo_date_id Int32,
    percent Float64
    ) ENGINE = PostgreSQL('psql:5432', 'db', 'promos_info', 'user', 'secret');

CREATE TABLE IF NOT EXISTS buyers_account (
    account_id Int32,
    buyer_id Int32,
    cookies String,
    email String,
    phone String
    ) ENGINE = PostgreSQL('psql:5432', 'db', 'buyers_account', 'user', 'secret');

CREATE TABLE IF NOT EXISTS sale_fact (
    order_id Int32,
    product_id Int32,
    account_id Int32,
    amount Int32,
    order_time Date,
    sum Float64,
    cookies String
    ) ENGINE = PostgreSQL('psql:5432', 'db', 'sale_fact', 'user', 'secret');
	
CREATE TABLE IF NOT EXISTS mart(
	account_id Int32,
	age_category String,
	gender String,
	email String,
	phone String,
	) ENGINE = PostgreSQL('psql:5432', 'db', 'mart', 'user', 'secret');