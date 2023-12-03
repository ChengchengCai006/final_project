-- first table: NYC_311
CREATE TABLE IF NOT EXISTS nyc_311 (
   unique_key INTEGER PRIMARY KEY,
   created_date TIMESTAMP,
   complaint_type TEXT,
   zipcode INTEGER,
   location geometry(Point,4326) 
);

CREATE INDEX IF NOT EXISTS idx_nyc_311_location ON nyc_311 USING GIST(location);

-- second table: NYC_tree
CREATE TABLE IF NOT EXISTS nyc_tree (
   tree_id INTEGER PRIMARY KEY,
   status TEXT,
   health TEXT,
   species TEXT,
   zipcode INTEGER,
   location geometry(Point,4326)
);

CREATE INDEX IF NOT EXISTS idx_nyc_tree_location ON nyc_tree USING GIST(location);

-- third table: nyc_zipcode
CREATE TABLE IF NOT EXISTS nyc_zipcode (
   zipcode INTEGER PRIMARY KEY,
   location geometry(POLYGON, 4326)
);

CREATE INDEX IF NOT EXISTS idx_nyc_zipcode_location ON nyc_zipcode USING GIST(location);

-- fourth table: nyc_zillow
CREATE TABLE IF NOT EXISTS nyc_zillow (
   zipcode INTEGER PRIMARY KEY,
   recorded_date Date,
   rent FLOAT
);