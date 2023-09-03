create table if not exists work_table (
	tpep_pickup_datetime date,
	tpep_dropoff_datetime date,
	passanger_count int,
	trip_distance float,
	fare_amount float,
	tip_amount float,
	total_amount float
);

COPY work_table
FROM '/test/raw/yellow_tripdata_itog.csv'
DELIMITER ','
--ENCODING 'UTF8'
CSV HEADER;