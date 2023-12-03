
SELECT 
     z.zipcode, 
     COUNT(*) as tree_count
FROM 
     nyc_tree t
JOIN 
     nyc_zipcode z ON ST_Contains(z.location, t.location)
WHERE 
     t.status = 'Alive'
GROUP BY 
     z.zipcode
ORDER BY 
     tree_count DESC
LIMIT 2;
