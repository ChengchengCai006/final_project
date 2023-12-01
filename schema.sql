-- first table: NYC_311
CREATE TABLE IF NOT EXISTS NYC_311 (
   unique_key INTEGER PRIMARY KEY,
   created_date TIMESTAMP,
   complaint_type TEXT,
   zipcode INTEGER,
   location Geometry('POINT', srid=4326)
);

-- second table: NYC_tree
CREATE TABLE IF NOT EXISTS NYC_tree (
   tree_id INTEGER PRIMARY KEY,
   status TEXT,
   health TEXT,
   species TEXT,
   zipcode INTEGER,
   location Geometry('POINT', srid=4326)
);

-- third table: NYC_zipcode
CREATE TABLE IF NOT EXISTS NYC_zipcode (
   zipcode INTEGER PRIMARY KEY,
   location Geometry('POLYGON', srid=4326)
);

-- fourth table: NYC_zillow
CREATE TABLE IF NOT EXISTS NYC_zillow (
   zipcode INTEGER PRIMARY KEY,
   recorded_date DATE,
   rent FLOAT
);