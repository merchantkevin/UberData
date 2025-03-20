SELECT
  CASE
    WHEN t.trip_distance < 2 THEN '0-2 miles'
    WHEN t.trip_distance BETWEEN 2 AND 5 THEN '2-5 miles'
    WHEN t.trip_distance BETWEEN 5 AND 10 THEN '5-10 miles'
    ELSE '10+ miles'
  END AS distance_range, AVG(fare_amount) AS avg_fare
FROM `uber_data.fact_table` f JOIN `uber_data.trip_distance_dim` t ON f.trip_distance_id = t.trip_distance_id
GROUP BY distance_range
ORDER BY avg_fare DESC