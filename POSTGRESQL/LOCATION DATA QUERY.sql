------- CREATE LOCATION MASTER TABLE ---------

CREATE TABLE location_master (
    location_id VARCHAR(10) PRIMARY KEY,
    state VARCHAR(100),
    city VARCHAR(100)
);

------- IMPORT LOCATION MASTER CSV FILE --------

COPY location_master
FROM 'D:\ADITI RAJESH NAIR\DATA SCIENCE\AQI ANALYSIS\AQI ANALYSIS PROJECT\DATASET\LOCATION DATASET.csv'
DELIMITER ','
CSV HEADER;

------- 1. COUNT ROWS IN LOACTION MASTER TABLE -------

SELECT COUNT(*) AS total_rows FROM location_master;

------ 2. DISPLAY DISTINCT STATE FROM LOCATION MASTER TABLE -----

SELECT DISTINCT state FROM location_master;

------ 3. COUNT CITIES IN LOACTION MASTER TABLE -------

SELECT state, COUNT(*) AS total_cities
FROM location_master
GROUP BY state
ORDER BY total_cities DESC;

------ 4. DISPLAY DATA OF MAHARASHTRA STATE -------

SELECT * FROM location_master
WHERE state = 'Maharashtra';

------ 5. SELECT CITY ENDING WITH 'PUR'------------

SELECT * FROM location_master
WHERE city ILIKE '%pur%';

------ 6. DISPLAY ALL DATA OF LOCATION MASTER -------

SELECT * FROM location_master;

