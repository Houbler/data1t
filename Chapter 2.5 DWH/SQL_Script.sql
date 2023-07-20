WITH all_shops AS (SELECT * FROM shop_dns
		UNION ALL SELECT * FROM shop_mvideo
		UNION ALL SELECT * FROM shop_sitilink)
SELECT ash.shop_id, pr.product_name, SUM(sales_cnt) AS sales_fact, p.plan_cnt AS sales_plan, 
		CAST(SUM (sales_cnt) AS DECIMAL) / CAST(p.plan_cnt AS DECIMAL) AS sales_attitude,
		SUM(pr.price * sales_cnt) AS income_fact, (p.plan_cnt * pr.price) AS income_plan,
		SUM(pr.price * sales_cnt) / (p.plan_cnt * pr.price) AS income_attitude FROM all_shops ash
JOIN plan p ON ash.shop_id = p.shop_id AND ash.product_id = p.product_id
JOIN products pr ON ash.product_id = pr.product_id 
GROUP BY ash.shop_id, pr.product_name, p.plan_cnt, pr.price
ORDER BY shop_id, pr.product_name