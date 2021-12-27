DROP TABLE IF EXISTS "emperors";

CREATE TABLE emperors (
index VARCHAR(50) PRIMARY KEY,
name VARCHAR(50),
full_name VARCHAR,
birth VARCHAR(50),
death VARCHAR(50),
birth_city VARCHAR(50),
birth_province VARCHAR(50),
succession VARCHAR(50),
reign_start VARCHAR(50),
reign_end VARCHAR(50),
cause VARCHAR(50),
killer VARCHAR(50),
dynasty VARCHAR(50),
era VARCHAR(50)
);

\copy emperors FROM 'roman_emperors.csv' DELIMITER ',' CSV HEADER;