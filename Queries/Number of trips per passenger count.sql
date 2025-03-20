SELECT  
pc.passenger_count,
COUNT(*) AS ride_count
FROM
`uber_data.fact_table` f JOIN
`uber_data.passenger_count_dim` pc
ON f.passenger_count_id = pc.passenger_count_id
GROUP BY pc.passenger_count
ORDER BY pc.passenger_count