CREATE TABLE mart AS (WITH age_category_mart AS (select buyer_id, birth_date, case 
	WHEN date_part('year', age(current_date, birth_date))::int < 18 THEN 'under 18' 
	WHEN date_part('year', age(current_date, birth_date))::int BETWEEN 18 AND 30 THEN '18 - 30'
	WHEN date_part('year', age(current_date, birth_date))::int BETWEEN 31 AND 45 THEN '31 - 45'
	WHEN date_part('year', age(current_date, birth_date))::int BETWEEN 46 AND 60 THEN '46 - 60'
	WHEN date_part('year', age(current_date, birth_date))::int > 60 THEN 'older than 60'
	ELSE 'unmarked category'
 	END age_category
 	from buyer b)
 					 
 	select ba.account_id, age_category, b.gender, email, phone from sale_fact sf
 	join buyers_account ba on sf.account_id = ba.account_id
 	join buyer b on ba.buyer_id = b.buyer_id
 	join age_category_mart acm on acm.buyer_id = ba.account_id
 	group by age_category, b.gender, ba.account_id, email, phone
 	order by age_category)