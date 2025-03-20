CREATE OR REPLACE TABLE `uber_data.tbl_analytics` AS (
SELECT
f.trip_id,
f.fare_amount,
f.extra,
f.mta_tax,
f.tip_amount,
f.tolls_amount,
f.total_amount,
d.pick_day,
d.pick_month,
d.pick_year,
pc.passenger_count,
pt.payment_type_name,
td.trip_distance
FROM
`uber_data.fact_table` f 
JOIN `uber_data.datetime_dim` d ON f.datetime_id = d.datetime_id
JOIN `uber_data.passenger_count_dim` pc ON f.passenger_count_id = pc.passenger_count_id
JOIN `uber_data.payment_type_dim` pt ON f.payment_type_id = pt.payment_type_id
JOIN `uber_data.trip_distance_dim` td ON f.trip_distance_id = td.trip_distance_id);