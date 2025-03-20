SELECT p.pickup_latitude, p.pickup_longitude, COUNT(*) AS rides 
FROM `uber_data.fact_table` f JOIN `uber_data.pickup_location_dim` p ON f.pickup_location_id = p.pickup_location_id
GROUP BY p.pickup_latitude, p.pickup_longitude 
ORDER BY rides DESC LIMIT 10