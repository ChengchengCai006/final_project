
WITH RentData AS (
    SELECT 
        zipcode, 
        AVG(rent) AS average_rent
    FROM 
        nyc_zillow
    WHERE 
        recorded_date BETWEEN '2023-01-01' AND '2023-01-31'
    GROUP BY 
        zipcode
), RentRank AS (
    SELECT 
        zipcode, 
        average_rent,
        RANK() OVER (ORDER BY average_rent DESC) AS high_rank,
        RANK() OVER (ORDER BY average_rent ASC) AS low_rank
    FROM 
        RentData
), TreeData AS (
    SELECT 
        zipcode, 
        COUNT(*) AS tree_count
    FROM 
        nyc_tree
    WHERE 
        status = 'Alive'
    GROUP BY 
        zipcode
), ComplaintData AS (
    SELECT 
        zipcode, 
        COUNT(*) AS complaint_count
    FROM 
        nyc_311
    WHERE 
        created_date BETWEEN '2023-01-01' AND '2023-01-31'
    GROUP BY 
        zipcode
)
SELECT 
    r.zipcode, 
    TO_CHAR(r.average_rent, 'FM9,999,999.00') as formatted_rent, 
    t.tree_count, 
    c.complaint_count
FROM 
    RentRank r
JOIN 
    TreeData t ON r.zipcode = t.zipcode
JOIN 
    ComplaintData c ON r.zipcode = c.zipcode
WHERE 
    r.high_rank <= 5 OR r.low_rank <= 5
ORDER BY 
    r.high_rank, r.low_rank
