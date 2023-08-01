WITH all_shops AS (SELECT * FROM shop_dns
		UNION ALL SELECT * FROM shop_mvideo
		UNION ALL SELECT * FROM shop_sitilink)
SELECT MONTH(ash.sales_date) AS month_sales, sn.shop_name, pr.product_name, sum(sales_cnt) AS sales_fact, p.plan_cnt AS sales_plan, 
		CAST(sum (sales_cnt) AS decimal(4,3))/CAST(p.plan_cnt AS decimal(4,3)) AS sales_attitude,
		sum(pr.price * sales_cnt) AS income_fact, (p.plan_cnt * pr.price) AS income_plan,
		sum(pr.price * sales_cnt)/(p.plan_cnt * pr.price) AS income_attitude 
FROM all_shops ash
JOIN plan p ON ash.shop_id = p.shop_id AND ash.product_id = p.product_id
JOIN products pr ON ash.product_id = pr.product_id 
JOIN shop_names sn ON ash.shop_id = sn.shop_id  
WHERE MONTH(ash.sales_date) = MONTH(p.plan_date)
GROUP BY sn.shop_name, pr.product_name, p.plan_cnt, pr.price, MONTH(ash.sales_date), MONTH(p.plan_date)
ORDER BY month_sales, sn.shop_name, pr.product_name	