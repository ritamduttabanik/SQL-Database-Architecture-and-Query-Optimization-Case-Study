-- ====================================================================
-- PROJECT: Unified SQL Analytics - Educational Systems & Factory Logistics
-- DESIGNED FOR: SQLite Standard / DBeaver Ecosystem
-- AUTHOR: SQL Case Study Portfolio
-- MENTOR: Prateek Agrawal Sir | Ivy Professional School
-- ====================================================================

-- ====================================================================
-- DOMAIN A: ACADEMIC PORTAL & STUDENT PERFORMANCE METRICS
-- ====================================================================

-- CASE 1: CLASS FILTERING (2A Students)
SELECT * 
FROM student
WHERE class = '2A';

-- CASE 2: FILTERING BY CLASS AND GENDER SUBSETS (1B Boys)
SELECT name, mtest
FROM student
WHERE class = '1B' 
  AND sex = 'M';

-- CASE 3: TEXT PATTERN MATCHING / POSITION-SPECIFIC WILDCARDS
-- Isolates names containing the letter "e" as the exact third character
SELECT class, name
FROM student
WHERE name LIKE '__e%';

-- CASE 4: STRIP NOISE STRINGS FROM EXCLUSION LISTS
-- Selects names starting with "T" but excludes entries containing "y"
SELECT class, name
FROM student
WHERE name LIKE 'T%' 
  AND name NOT LIKE '%y%';

-- CASE 5: DISCRETE VALUE EXCLUSIONS
-- Filters 1A students dropping specific Math test threshold edge cases
SELECT name, class, mtest
FROM student
WHERE class = '1A' 
  AND mtest NOT IN (51, 61, 71, 81, 91);

-- CASE 6: TEMPORAL STRING RECONSTRUCTION & ISO-8601 RANGE ANALYSIS
-- Reconfigures standard DD-MM-YYYY text into YYYY-MM-DD standard format
SELECT * 
FROM student
WHERE SUBSTR(dob, 7, 4) || '-' || SUBSTR(dob, 4, 2) || '-' || SUBSTR(dob, 1, 2)
BETWEEN '1986-03-22' AND '1986-04-21';

-- CASE 7: CONDITIONAL METRIC COUNTING WITH GEOGRAPHIC FILTERS
SELECT COUNT(*) AS number_of_girls
FROM student
WHERE sex = 'F' 
  AND dcode = 'TST';

-- CASE 8: ACADEMIC METRIC PASSING-RATE AGGREGATION
-- Partitions academic metric counts grouped by classroom partitions
SELECT class, COUNT(*) AS pass_count
FROM student
WHERE mtest >= 50
GROUP BY class;

-- CASE 9: CATEGORICAL GENDER VOLUME BY CLASSROOM
SELECT class, COUNT(*) AS girl_count
FROM student
WHERE sex = 'F'
GROUP BY class;

-- CASE 10: TEMPORAL STRING PARSING AND ANNUAL VOLUME PARTITIONING
SELECT SUBSTR(dob, 7, 4) AS birth_year, COUNT(*) AS girl_count
FROM student
WHERE sex = 'F'
GROUP BY birth_year;

-- CASE 11: INTUITIVE DATE MATH & DEMOGRAPHIC AGE AVERAGING
SELECT AVG(STRFTIME('%Y', 'now') - SUBSTR(dob, 7, 4)) AS avg_age
FROM student
WHERE class LIKE '1%' 
  AND sex = 'M';

-- CASE 12: MEAN SCORE COMPUTATIONS PARTITIONED BY CLASS
SELECT class, AVG(mtest) AS average_mtest
FROM student
GROUP BY class;

-- CASE 13: MAXIMAL CAP EXTREMUM IDENTIFICATION BY GENDER
SELECT sex, MAX(mtest) AS max_mtest
FROM student
GROUP BY sex;

-- CASE 14: BENCHMARK COMPREHENSIVE DATASET PERFORMANCE AVERAGING
SELECT AVG(mtest) AS overall_average_mark
FROM student;


-- ====================================================================
-- DOMAIN B: RELATIONAL SET ALGEBRA ACROSS SUBJECT CLUBS
-- ====================================================================

-- CASE 15: SET INTERSECTION (Physics & Chemistry Shared Membership)
SELECT ID, FullName
FROM Phy
INTERSECT
SELECT ID, FullName
FROM Chem;

-- CASE 16: COMPLEX SET ALGEBRA (Intersecting Chem/Bio, Excluding Physics)
SELECT ID, FullName
FROM Chem
INTERSECT
SELECT ID, FullName
FROM Bio
EXCEPT
SELECT ID, FullName
FROM Phy;


-- ====================================================================
-- DOMAIN C: INDUSTRIAL FACTORY DATA & SUPPLY CHAIN LOGISTICS
-- ====================================================================

-- CASE 17: ASSET TRACKING & SUPPLY CHAIN SORTING
-- Orders enterprise assembly volumes to optimize storage tracking
SELECT * 
FROM Client
ORDER BY Qty ASC;

-- CASE 18: CORE KEYWORD DESCRIPTOR SUBSET FILTERING
SELECT * 
FROM Client
WHERE Descript LIKE '%Shaft%';

-- CASE 19: MULTI-CONDITION PROCUREMENT THRESHOLD EXAMINATION
SELECT * 
FROM Client
WHERE Qty > 20 
  AND Supplier = 'China Metals Co.';

-- CASE 20: DISTINCT UNIQUE VENDOR IDENTIFICATION
SELECT DISTINCT Supplier
FROM Client;

-- CASE 21: CONDITIONAL DATA MODIFICATION / INVENTORY RE-STOCKING
UPDATE Client
SET Qty = Qty + 10
WHERE Qty < 10;

-- CASE 22: DATA SCRUBBING & INVALID ROW DELETIONS
DELETE FROM Client
WHERE Part_no IN (879, 654, 231, 234);

-- CASE 23: DYNAMIC DDL SCHEMA EVOLUTION (Adding Temporal Attributes)
ALTER TABLE Client
ADD Date_Purchase TEXT;
