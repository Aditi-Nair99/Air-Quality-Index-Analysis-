-------CREATING WEATHER DATA TABLE IN POSTGRESQL-------

CREATE TABLE weather_data (
    weather_id VARCHAR(10) PRIMARY KEY,
    location_id VARCHAR(10),
    date DATE,
    city VARCHAR(100),
    state VARCHAR(100),
    latitude NUMERIC(10,6),
    longitude NUMERIC(10,6),
    temperature_max_c NUMERIC(5,2),
    temperature_min_c NUMERIC(5,2),
    temperature_avg_c NUMERIC(5,2),
    humidity_pct NUMERIC(5,2),
    rainfall_mm NUMERIC(6,2),
    wind_speed_kmh NUMERIC(6,2),
    wind_direction VARCHAR(20),
    pressure_hpa NUMERIC(7,2),
    visibility_km NUMERIC(5,2),
    cloud_cover_pct NUMERIC(5,2),
    uv_index NUMERIC(4,2),
    FOREIGN KEY (location_id) REFERENCES location_master(location_id)
);

------ IMPORTING WEATHER DATA CSV FILE ------------

COPY weather_data
FROM 'D:\ADITI RAJESH NAIR\DATA SCIENCE\AQI ANALYSIS\AQI ANALYSIS PROJECT\DATASET\WEATHER DATASET.csv'
DELIMITER ','
CSV HEADER;

------- 1. DISPLAY ALL THE WEATHER TABLE DATA ----------

SELECT * FROM weather_data;

------- 2. COUNT ROWS IN WEATHER DATASET --------

SELECT COUNT(*) AS total_weather_rows
FROM weather_data;

------ 3. VIEW FIRST 10 WEATHER RECORDS -------

SELECT * FROM weather_data
LIMIT 10;

------ 4. DISPLAY AVERAGE TEMPERATURE CITY WISE ------

SELECT city, temperature_avg_c
FROM weather_data
ORDER BY temperature_avg_c DESC
LIMIT 10;

-----5. DISPLAY AVERAGE HUMIDITY STATE WISE ------

SELECT state, AVG(humidity_pct) AS avg_humidity
FROM weather_data
GROUP BY state
ORDER BY avg_humidity DESC;

----- 6. DISPLAY RAINFALL IN 'mm' CITY WISE -------

SELECT city, rainfall_mm
FROM weather_data
WHERE rainfall_mm > 0
ORDER BY rainfall_mm DESC;

----- 7. DISPLAY THE WIND SPEED & WIND DIRECTION CITY WISE ------------

SELECT city, wind_speed_kmh, wind_direction
FROM weather_data
ORDER BY wind_speed_kmh DESC
LIMIT 10;

---- 8. DISPLAY TEMPERATURE, HUMIDITY & UV INDEX STATE WISE ------

SELECT DISTINCT state, temperature_avg_c, humidity_pct, uv_index
FROM weather_data
WHERE uv_index > 8
ORDER BY uv_index DESC;
