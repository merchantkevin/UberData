SELECT f.trip_id, t.trip_distance, p.pickup_latitude, p.pickup_longitude, d.dropoff_latitude, d.dropoff_longitude 
FROM `uber_data.fact_table` f JOIN `uber_data.trip_distance_dim` t ON f.trip_distance_id = t.trip_distance_id
JOIN `uber_data.pickup_location_dim` p ON f.pickup_location_id = p.pickup_location_id
JOIN `uber_data.dropoff_location_dim` d ON f.dropoff_location_id = d.dropoff_location_id 
ORDER BY t.trip_distance DESC LIMIT 10; -- for longest trips







SELECT f.trip_id, t.trip_distance, p.pickup_latitude, p.pickup_longitude, d.dropoff_latitude, d.dropoff_longitude 
FROM `uber_data.fact_table` f JOIN `uber_data.trip_distance_dim` t ON f.trip_distance_id = t.trip_distance_id
JOIN `uber_data.pickup_location_dim` p ON f.pickup_location_id = p.pickup_location_id
JOIN `uber_data.dropoff_location_dim` d ON f.dropoff_location_id = d.dropoff_location_id 
ORDER BY t.trip_distance LIMIT 10; -- for shortest trips