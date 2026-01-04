create table station(id int, name varchar(50),city varchar(50), state varchar(50), lat_num number, lon_num number);
INSERT INTO station VALUES (1, 'Central Station', 'Hyderabad', 'Telangana', 17.3850, 78.4867);
INSERT INTO station VALUES (2, 'North Station', 'Delhi', 'Delhi', 28.7041, 77.1025);
INSERT INTO station VALUES (3, 'East Station', 'Kolkata', 'West Bengal', 22.5726, 88.3639);
INSERT INTO station VALUES (4, 'West Station', 'Mumbai', 'Maharashtra', 19.0760, 72.8777);
INSERT INTO station VALUES (5, 'South Station', 'Chennai', 'Tamil Nadu', 13.0827, 80.2707);
INSERT INTO station VALUES (6, 'City Hub', 'Bengaluru', 'Karnataka', 12.9716, 77.5946);
INSERT INTO station VALUES (7, 'Metro Point', 'Pune', 'Maharashtra', 18.5204, 73.8567);
INSERT INTO station VALUES (8, 'Rail Junction', 'Jaipur', 'Rajasthan', 26.9124, 75.7873);
INSERT INTO station VALUES (9, 'Terminal One', 'Ahmedabad', 'Gujarat', 23.0225, 72.5714);
INSERT INTO station VALUES (10, 'Main Stop', 'Kochi', 'Kerala', 9.9312, 76.2673);
1. Query a list of CITY and STATE from the STATION table.
The STATION table is described as follows:
SELECT city , state from station;
