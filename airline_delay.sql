create database flights_delays;

use flights_delays;

create table airline
(    IATA_CODE    varchar(2) primary key,
    AIRLINE        varchar(20)
);

create table airports
(    IATA_CODE    varchar(3) primary key,
    AIRPORT        varchar(50),
    CITY        varchar(20),
    STATE        varchar(2),
    COUNTRY        varchar(3),
    LATITUDE    float,
    LONGITUDE    float
);

create table flights
(    YEAR    int,
    MONTH    int,
    DAY        int,
    DAY_OF_WEEK    int,
    AIRLINE    varchar(2),
    FLIGHT_NUMBER    int,
    TAIL_NUMBER        varchar(6),
    ORIGIN_AIRPORT    varchar(3),
    DESTINATION_AIRPORT    varchar(3),
    SCHEDULED_DEPARTURE    int,
    DEPARTURE_TIME        int,
    DEPARTURE_DELAY        int,
    TAXI_OUT            int,
    WHEELS_OFF            int,
    SCHEDULED_TIME        int,
    ELAPSED_TIME        int,
    AIR_TIME            int,
    DISTANCE            int,
    WHEELS_ON            int,
    TAXI_IN                int,
    SCHEDULED_ARRIVAL    int,
    ARRIVAL_TIME        int,
    ARRIVAL_DELAY        int,
    DIVERTED            int,
    CANCLED                int,
    CANCELLATION_REASON    int,
    AIR_SYSTEM_DELAY    int,
    SECURITY_DELAY        int,
    AIRLINE_DELAY        int,
    LATE_AIRCRAFT_DELAY    int,
    WEATHER_DELAY        int
);

SHOW VARIABLES LIKE 'local_infile';

SET GLOBAL local_infile = 1;

use flights_delays;

LOAD DATA LOCAL INFILE 'C:/Users/changd/OneDrive/Desktop/MSDS 7330/project/airlines.csv' 
INTO TABLE airline 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/changd/OneDrive/Desktop/MSDS 7330/project/airports.csv' 
INTO TABLE airports 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/changd/OneDrive/Desktop/MSDS 7330/project/flights.csv' 
INTO TABLE flights 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
