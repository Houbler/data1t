with all_shops as (select * from shop_dns
		union all select * from shop_mvideo
		union all select * from shop_sitilink)
select DATE_PART('month', ash.sales_date) as month_sales, sn.shop_name, pr.product_name, sum(sales_cnt) as sales_fact, p.plan_cnt as sales_plan, 
		cast(sum (sales_cnt) as decimal)/cast(p.plan_cnt as decimal) as sales_attitude,
		sum(pr.price * sales_cnt) as income_fact, (p.plan_cnt * pr.price) as income_plan,
		sum(pr.price * sales_cnt)/(p.plan_cnt * pr.price) as income_attitude 
from all_shops ash
join plan p on ash.shop_id = p.shop_id and ash.product_id = p.product_id
join products pr on ash.product_id = pr.product_id 
join shop_names sn on ash.shop_id = sn.shop_id  
WHERE DATE_PART('month',  ash.sales_date) = DATE_PART('month', p.plan_date)
group by sn.shop_name, pr.product_name, p.plan_cnt, pr.price, DATE_PART('month', ash.sales_date), DATE_PART('month', p.plan_date)
order by month_sales, sn.shop_name, pr.product_name	