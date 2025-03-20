SELECT d.pick_hour, COUNT(*) AS rides FROM `uber_data.fact_table` f JOIN `uber_data.datetime_dim` d ON f.datetime_id = d.datetime_id 
GROUP BY d.pick_hour ORDER BY rides DESC