--Создание таблиц

CREATE EXTERNAL TABLE IF NOT EXISTS temp_people (
  index INT,
  user_id STRING,
  first_name STRING,
  last_name STRING,
  sex STRING,
  email STRING,
  phone STRING,
  birth_date DATE,
  job_title STRING,
  groups INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/admin/peop'
TBLPROPERTIES("skip.header.line.count"="1");

CREATE TABLE IF NOT EXISTS people (
  index INT,
  user_id STRING,
  first_name STRING,
  last_name STRING,
  sex STRING,
  email STRING,
  phone STRING,
  birth_date DATE,
  job_title STRING,
  groups INT
)
CLUSTERED BY(user_id) INTO 10 BUCKETS
STORED AS PARQUET;

INSERT INTO TABLE people
SELECT 
  index, user_id, first_name, last_name, sex,
  email, phone, birth_date, job_title, groups
FROM temp_people;

DROP TABLE IF EXISTS temp_people;



CREATE EXTERNAL TABLE IF NOT EXISTS temp_organizations(
index INT,
organizations_id STRING,
name STRING,
website STRING,
country STRING,
description STRING,
founded INT,
industry STRING,
num_employees INT,
groups INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/admin/orgs'
TBLPROPERTIES("skip.header.line.count"="1");

CREATE TABLE IF NOT EXISTS organizations(
index INT,
organizations_id STRING,
name STRING,
website STRING,
country STRING,
description STRING,
founded INT,
industry STRING,
num_employees INT,
groups INT
)
CLUSTERED BY (organizations_id) INTO 10 BUCKETS
STORED AS PARQUET;

INSERT INTO TABLE organizations
SELECT 
index, organizations_id, name, website,
country, description, founded,
industry,num_employees,groups
FROM temp_organizations;

DROP TABLE IF EXISTS temp_organizations;



CREATE EXTERNAL TABLE IF NOT EXISTS temp_customers (
  index INT,
  customer_id STRING,
  first_name STRING,
  last_name STRING,
  company STRING,
  city STRING,
  country STRING,
  phone1 STRING,
  phone2 STRING,
  email STRING,
  subscription_date DATE,
  website STRING,
  subscription_year INT,
  groups INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/admin/cust'
TBLPROPERTIES("skip.header.line.count"="1");

CREATE TABLE IF NOT EXISTS customers (
  index INT,
  customer_id STRING,
  first_name STRING,
  last_name STRING,
  company STRING,
  city STRING,
  country STRING,
  phone1 STRING,
  phone2 STRING,
  email STRING,
  subscription_date DATE,
  website STRING,
  groups INT
)
PARTITIONED BY (subscription_year int)
CLUSTERED BY (customer_id) INTO 10 BUCKETS
STORED AS PARQUET;

DROP TABLE IF EXISTS temp_customers;

INSERT INTO TABLE customers PARTITION (subscription_year=2021)
SELECT 
  index, customer_id, first_name, last_name, 
  company, city, country, phone1, phone2, 
  email, subscription_date, website, groups
FROM temp_customers;

SHOW TABLES;

-----------------------------------------------------------------------------------------------------
-- Создание витрины данных

CREATE TABLE IF NOT EXISTS data_mart(
    company STRING,
    subscription_year INT,
    target_age_group STRING,
    subscription_count INT
);

WITH customer_people AS (
    SELECT c.company, YEAR(c.subscription_date) AS subscription_year, p.birth_date, c.subscription_date,
        YEAR(c.subscription_date) - YEAR(p.birth_date) - 
                (CASE 
                    WHEN MONTH(c.subscription_date) < MONTH(p.birth_date) 
                    OR (MONTH(c.subscription_date) = MONTH(p.birth_date) AND DAY(c.subscription_date) < DAY(p.birth_date)) 
                    THEN 1 ELSE 0 
                 END) AS age
    FROM customers c
    JOIN people p USING (email)
    ),
customer_age_group AS (
    SELECT cp.company, cp.subscription_year, 
        CASE
            WHEN age BETWEEN 12 AND 17 THEN '12-17'
            WHEN age BETWEEN 18 AND 25 THEN '18-25'
            WHEN age BETWEEN 26 AND 35 THEN '26-35'
            WHEN age BETWEEN 36 AND 45 THEN '36-45'
            WHEN age BETWEEN 46 AND 60 THEN '46-60'
            ELSE '60+'
        END AS age_group
    FROM customer_people cp
    WHERE age >= 12), 
age_group_counts AS (
    SELECT company, subscription_year, age_group, COUNT(*) AS subscription_count
    FROM customer_age_group
    GROUP BY company, subscription_year, age_group
    ),
target_age_group AS (
    SELECT company, subscription_year, age_group, subscription_count,
    ROW_NUMBER() OVER (PARTITION BY company, subscription_year ORDER BY subscription_count DESC) AS rank
    FROM age_group_counts
    )
INSERT INTO data_mart (
SELECT company, subscription_year, age_group AS target_age_group, subscription_count
FROM target_age_group
WHERE rank = 1
ORDER BY company, subscription_year);

INSERT OVERWRITE DIRECTORY '/user/admin/output/data_mart'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
SELECT * FROM data_mart;