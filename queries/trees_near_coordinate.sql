
SELECT 
     tree_id, 
     species, 
     health, 
     status, 
     ST_AsText(location) AS location
FROM 
     nyc_tree
WHERE 
     ST_DWithin(location, 'POINT(-73.96253174434912 40.80737875669467)'::geography, 804.672)
