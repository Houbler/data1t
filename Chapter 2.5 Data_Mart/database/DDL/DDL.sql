CREATE TABLE IF NOT EXISTS public.products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOt NULL,
    price DECIMAL NOT NULL
    );
    
CREATE TABLE IF NOT EXISTS public.shop_names (
    shop_id SERIAL PRIMARY KEY,
    shop_name VARCHAR(255) NOT NULL
    );

CREATE TABLE IF NOT EXISTS public.plan (
    product_id INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE SET NULL,
    shop_id INT NOT NULL,
    FOREIGN KEY (shop_id) REFERENCES shop_names (shop_id) ON DELETE SET NULL,
    plan_cnt INT NOT NULL,
    plan_date DATE NOT NULL
    );

CREATE TABLE IF NOT EXISTS public.shop_dns (
    shop_id INT NOT NULL,
    FOREIGN KEY (shop_id) REFERENCES shop_names (shop_id) ON DELETE SET NULL,
    sales_date DATE NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE SET NULL,
    sales_cnt INT NOT NULL
    );

CREATE TABLE IF NOT EXISTS public.shop_mvideo (
    shop_id INT NOT NULL,
    FOREIGN KEY (shop_id) REFERENCES shop_names (shop_id) ON DELETE SET NULL,
    sales_date DATE NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE SET NULL,
    sales_cnt INT NOT NULL
    );

CREATE TABLE IF NOT EXISTS public.shop_sitilink (
    shop_id INT NOT NULL,
    FOREIGN KEY (shop_id) REFERENCES shop_names (shop_id) ON DELETE SET NULL,
    sales_date DATE NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE SET NULL,
    sales_cnt INT NOT NULL
    );


