-------CREATING AQI TABLE IN POSTGRESQL-------

CREATE TABLE aqi_data (
    aqi_id VARCHAR(10) PRIMARY KEY,
    location_id VARCHAR(10),
    country VARCHAR(50),
    date DATE,
    state VARCHAR(100),
    city VARCHAR(100),
    station TEXT,
    latitude NUMERIC(10,6),
    longitude NUMERIC(10,6),
    pollutant_id VARCHAR(50),
    pollutant_min INT,
    pollutant_max INT,
    pollutant_avg INT,
    FOREIGN KEY (location_id) REFERENCES location_master(location_id)
);


------ IMPORTING AQI DATA CSV FILE ------------

COPY aqi_data
FROM 'D:\ADITI RAJESH NAIR\DATA SCIENCE\AQI ANALYSIS\AQI ANALYSIS PROJECT\DATASET\AQI DATASET.csv'
DELIMITER ','
CSV HEADER;

------- 1. DISPLAY ALL THE AQI TABLE DATA ----------

SELECT * FROM aqi_data;

----- 2. COUNT ROWS OF AQI DATA -------

SELECT COUNT(*) AS total_rows FROM aqi_data;

----- 3. SELECT 10 ROWS OF AQI DATA --------

SELECT * FROM aqi_data LIMIT 10;

------ 4. DISPLAY AVERAGE POLLUTANTS OF CITY -------

SELECT city, AVG(pollutant_avg) AS avg_aqi
FROM aqi_data
GROUP BY city
ORDER BY avg_aqi DESC;

-----5. DISPLAY SUM OF  POLLUTANTS OF CITY -------

SELECT city, SUM(pollutant_avg) AS aqi_sum
FROM aqi_data
GROUP BY city
ORDER BY aqi_sum DESC;

----- 6. DISPLAY POLLTANT COUNT ------

SELECT pollutant_id, COUNT(*) AS pollutant_count
FROM aqi_data
GROUP BY pollutant_id
ORDER BY pollutant_count DESC;

----- 7. DISPLAY POLLUTANT > 100 CITY WISE ----------

SELECT city, pollutant_id, pollutant_avg
FROM aqi_data
WHERE pollutant_avg > 100
ORDER BY pollutant_avg DESC;

----- 8. DISPLAY STATE WITH MAX POLLUTANT -------------

SELECT state, MAX(pollutant_max) AS highest_pollutant_value
FROM aqi_data
GROUP BY state
ORDER BY highest_pollutant_value DESC;

----- 9. DISPLAY DATA OF MUMBAI CITY ------

SELECT city, station, pollutant_id, pollutant_avg
FROM aqi_data
WHERE city = 'Mumbai';