SELECT d.pick_day, d.pick_month, d.pick_year, SUM(total_amount) AS total_revenue FROM `uber_data.fact_table` f JOIN `uber_data.datetime_dim` d ON f.datetime_id = d.datetime_id
GROUP BY d.pick_day, d.pick_month, d.pick_year
ORDER BY d.pick_day, d.pick_month, d.pick_year