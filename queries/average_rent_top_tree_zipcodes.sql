
SELECT 
    tc.zipcode, 
    TO_CHAR(AVG(z.rent), 'FM9,999,999.00') as average_rent
FROM 
    (
        SELECT 
            zipcode, 
            COUNT(*) AS tree_count
        FROM 
            nyc_tree
        WHERE 
            status = 'Alive'
        GROUP BY 
            zipcode
        ORDER BY 
            COUNT(*) DESC
        LIMIT 10
    ) AS tc
JOIN 
    nyc_zillow z ON tc.zipcode = z.zipcode
WHERE 
    z.recorded_date BETWEEN '2023-08-01' AND '2023-08-31'
GROUP BY 
    tc.zipcode, tc.tree_count
ORDER BY 
    tc.tree_count DESC
