CREATE TABLE IF NOT EXISTS default.products(
   product_id Int32,
   product_name String,
   price Float64,
) ENGINE = PostgreSQL('psql:5432', 'db', 'products', 'user', 'secret');

CREATE TABLE IF NOT EXISTS default.shop_names
(
	shop_id Int32,
	shop_name String
)
ENGINE = PostgreSQL('psql:5432', 'db', 'shop_names', 'user', 'secret');

CREATE TABLE IF NOT EXISTS default.plan
(
	product_id Int32,
	shop_id Int32,
	plan_cnt Int16,
	plan_date Date
)
ENGINE = PostgreSQL('psql:5432', 'db', 'plan', 'user', 'secret');

CREATE TABLE IF NOT EXISTS default.shop_mvideo
(
	shop_id Int32,
	product_id Int32,
	sales_cnt Int32,
	sales_date Date
)
ENGINE = PostgreSQL('psql:5432', 'db', 'shop_mvideo', 'user', 'secret');

CREATE TABLE IF NOT EXISTS default.shop_dns
(
	shop_id Int32,
	product_id Int32,
	sales_cnt Int32,
	sales_date Date
)
ENGINE = PostgreSQL('psql:5432', 'db', 'shop_dns', 'user', 'secret');

CREATE TABLE IF NOT EXISTS default.shop_sitilink
(
	shop_id Int32,
	product_id Int32,
	sales_cnt Int32,
	sales_date Date
)
ENGINE = PostgreSQL('psql:5432', 'db', 'shop_sitilink', 'user', 'secret');