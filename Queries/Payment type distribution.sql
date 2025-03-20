SELECT pt.payment_type_name, COUNT(*) as rides, (COUNT(*) * 100.0 / SUM(COUNT(*)) OVER()) AS percentage 
FROM `uber_data.fact_table` f JOIN `uber_data.payment_type_dim` pt ON f.payment_type_id = pt.payment_type_id
GROUP BY pt.payment_type_name
ORDER BY rides DESC