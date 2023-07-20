with all_shops as (select * from shop_dns
		union all select * from shop_mvideo
		union all select * from shop_sitilink)
select ash.shop_id, pr.product_name, sum(sales_cnt) as sales_fact, p.plan_cnt as sales_plan, 
		cast(sum (sales_cnt) as decimal)/cast(p.plan_cnt as decimal) as sales_attitude,
		sum(pr.price * sales_cnt) as income_fact, (p.plan_cnt * pr.price) as income_plan,
		sum(pr.price * sales_cnt)/(p.plan_cnt * pr.price) as income_attitude from all_shops ash
join plan p on ash.shop_id = p.shop_id and ash.product_id = p.product_id
join products pr on ash.product_id = pr.product_id 
group by ash.shop_id, pr.product_name, p.plan_cnt, pr.price
order by shop_id, pr.product_name