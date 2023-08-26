INSERT INTO brand (brand_name)
	(SELECT DISTINCT brand FROM sales ORDER BY brand);

INSERT INTO model (model_name)
	(SELECT DISTINCT model FROM sales ORDER BY model);

INSERT INTO category (category_name)
	(SELECT DISTINCT category FROM sales ORDER BY category);

INSERT INTO promo_date (start_date_promo, end_date_promo)
	(SELECT DISTINCT start_date_promo, end_date_promo FROM promos ORDER BY start_date_promo);

INSERT INTO buyer (buyers_name, gender, birth_date)
	(SELECT DISTINCT buyers_name, gender, birth_date FROM user_account_info ORDER BY buyers_name);

INSERT INTO product (brand_id, model_id, category_id, product_name, cost)
	(SELECT DISTINCT brand_id, model_id, category_id, product_name, cost FROM sales s
    JOIN brand br ON br.brand_name = s.brand
    JOIN model m ON m.model_name = s.model
    JOIN category c on c.category_name = s.category ORDER BY product_name);

INSERT INTO promos_info (product_id, promo_date_id, percent)
	(SELECT product_id, promo_date_id, percent FROM promos p
    JOIN promo_date pd ON pd.start_date_promo = p.start_date_promo and pd.end_date_promo = p.end_date_promo
    JOIN product pt ON pt.product_name = p.product_name ORDER BY p.start_date_promo);

INSERT INTO buyers_account (buyer_id, cookies, email, phone)
	(SELECT buyer_id, cookies, email, phone FROM user_account_info uaf
    JOIN buyer b ON b.buyers_name = uaf.buyers_name and b.birth_date = b.birth_date ORDER BY buyer_id);

INSERT INTO sale_fact (product_id, account_id, amount, order_time, cookies, sum)
	(SELECT product_id, account_id, amount, order_time, s.cookies, (s.amount * p.cost) as sum FROM sales s
    JOIN product p ON p.product_name = s.product_name
    JOIN buyers_account ba ON ba.cookies = s.cookies ORDER BY buyer_id);
