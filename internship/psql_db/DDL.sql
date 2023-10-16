CREATE SCHEMA IF NOT EXISTS internship;

CREATE TABLE IF NOT EXISTS internship.parsed_data (
	job_name varchar,
	city varchar,
	company_name varchar,
	work_experience varchar,
	work_location varchar,
	employment varchar,
	work_description varchar,
	skills varchar,
	salary varchar,
	source varchar,
    work_type varchar,
	vac_time varchar
);

COPY internship.parsed_data
FROM '/raw/careerjet_vac.csv' DELIMITER ';' CSV HEADER;

COPY internship.parsed_data
FROM '/raw/rabota1000_updated.csv' DELIMITER ';' CSV HEADER;