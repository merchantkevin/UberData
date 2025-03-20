SELECT 
    CASE 
        WHEN f.tolls_amount = 0 THEN 'No Toll'
        WHEN f.tolls_amount BETWEEN 0 AND 5 THEN 'Low Toll (0-5)'
        WHEN f.tolls_amount BETWEEN 5 AND 15 THEN 'Medium Toll (5-15)'
        ELSE 'High Toll (15+)'
    END AS toll_category,
    AVG(f.total_amount) AS avg_fare
FROM `uber_data.fact_table` f
GROUP BY toll_category
ORDER BY avg_fare DESC;
