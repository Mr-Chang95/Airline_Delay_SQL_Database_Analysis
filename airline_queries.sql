use flights_delays;

## Query 1
SELECT origin_airport, COUNT(*) AS total_delays
FROM flights
WHERE DEPARTURE_DELAY > 0
GROUP BY origin_airport
ORDER BY total_delays DESC
LIMIT 10;

## Query 2
SELECT 'Air System Delay' AS delay_type,
SUM(AIR_SYSTEM_DELAY) AS total_delay
FROM flights
UNION ALL
SELECT 
	'Security Delay' AS delay_type,
    SUM(SECURITY_DELAY) AS total_delay
FROM flights
UNION ALL
SELECT
	'Airline Delay' AS delay_type,
	SUM(AIRLINE_DELAY) AS total_delay
FROM flights
UNION ALL
SELECT
	'Late Aircraft Delay' AS delay_type,
	SUM(LATE_AIRCRAFT_DELAY) AS total_delay
FROM flights
UNION ALL
SELECT
	'Weather Delay' AS delay_type,
	SUM(WEATHER_DELAY) AS total_delay
FROM flights
ORDER BY total_delay DESC;

## Query 3
SELECT a.AIRLINE,
	SUM(f.AIR_SYSTEM_DELAY) AS air_system_delay,
	SUM(f.SECURITY_DELAY) AS security_delay,
	SUM(f.AIRLINE_DELAY) AS airline_delay,
	SUM(f.LATE_AIRCRAFT_DELAY) As late_aircraft_delay,
	SUM(f.WEATHER_DELAY) AS weather_delay
FROM flights f
JOIN airline a ON fAIRLINE = a.IATA_CODE
GROUP BY f.AIRLINE, a.AIRLINE
ORDER BY airline_delay DESC, air_system_delay DESC, security_delay;

## Query 4
SELECT origin_airport,
	SUM(AIR_SYSTEM_DELAY) AS air_system_delay,
	SUM(SECURITY_DELAY) AS security_delay,
	SUM(AIRLINE_DELAY) AS airline_delay,
	SUM(LATE_AIRCRAFT_DELAY) AS late_aircraft_delay,
	SUM(WEATHER_DELAY) AS weather_delay
FROM flights
WHERE DEPARTURE_DELAY > 0
GROUP BY origin_airport
ORDER BY airline_delay DESC, air_system_delay DESC, security_delay
LIMIT 10;
