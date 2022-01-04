-- Museum Exhibition Data Validation

-- Uploading CSV file to PostgreeSQL
DROP TABLE IF EXISTS "emperors";

-- Creating table to store CSV file
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

-- Copying CSV file to PostgreSQL
COPY emperors FROM 'roman_emperors.csv' DELIMITER ',' CSV HEADER;

-- Solution
SELECT DISTINCT(UPPER(name)) AS name, -- Makes name uppercase
		LOWER(full_name) AS full_name, -- Makes full_name lowercase
		CASE WHEN birth_city IS NULL AND birth_province IS NULL THEN 'Unknown'
			 WHEN birth_city IS NULL OR birth_province IS NULL THEN CONCAT(birth_city, birth_province)
			 ELSE CONCAT(birth_city, ', ', birth_province)
			 END AS birthplace, -- Generates birthplace by joining birth_city column and birth_province column
		CASE WHEN death IS NULL OR birth IS NULL THEN 'Unknown'
			 ELSE CAST (EXTRACT(YEAR FROM CAST(death AS timestamp without time zone))
						- EXTRACT(YEAR FROM CAST(birth AS timestamp without time zone)) AS TEXT)
			 END AS age, -- Generates age by subtracting the birth column from death column
		CASE WHEN reign_end IS NULL OR reign_start IS NULL THEN 'Unknown'
			 ELSE CAST(EXTRACT(YEAR FROM CAST(reign_end AS timestamp without time zone )) 
				       - EXTRACT(YEAR FROM CAST(reign_start AS timestamp without time zone)) AS TEXT)
			 END AS reign, -- Generates reign from subtracting reign_start column from reign_end column
		CASE WHEN cause <> 'Assassination'
				AND cause <> 'Natural Causes'
				AND cause <> 'Execution'
				AND cause <> 'Died in Battle' 
				AND cause <> 'Suicide'
				THEN 'Other'
			  ELSE cause
		END AS cod, -- cod (cause of death) column is generated
		era
		FROM emperors
		
