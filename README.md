# Wind Energy Project
An ETL project utilising wind energy data - By Carly Wieland

# Project Outline / Scenario:
You are a data engineer for a New-Energies Company.
The company is exploring posible future wind energy oportunities in VIC, Australia.
This company wants to understand potential future outages, and some of the factors that may cause them. For this analysis, they will require data on a multitude of factors, including:

* expected energy outputs 
* outage hisotoy in similar plants in the area
* weather events in the area

You have been asked to create the dataset, and provide a comprehensive report of the ETL process, including:
* The sources of data that you extracted from (a minimum of 2 is required, and you must include how the data was formatted (CSV, JSON, pgAdmin 4, etc)).
* The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).
* The type of final production database to load the data into (relational or non-relational).
* The final tables or collections that will be used in the production database (include reasoning as to why this database was chosen).


Once the report has been complete, you will need to upload the report to Github and submit a link to Bootcampspot.

# Wind Energy Project Final Report
tbc.

Extract

Source Of Data:
* Data alias: Storm-Data
http://www.bom.gov.au/australia/stormarchive/ (date range 1/1/2010 to 1/1/2021)
Includes all storm data on all states and teritories.
Formatted as a CSV file.

* Data alias: Outages-Data
http://nemweb.com.au/Reports/Current/HighImpactOutages/ (date range 30/8/2021 to 6/6/2022)
Includes all High Impact Outage data on existing wind farms in all states and teritories.
Formatted as a CSV file.

* Data alias: Wind-Generators-Data
https://anero.id/energy/wind-energy  (data accurate as of 13/6/2022)
Includes summary of Redistered Wind Generators in QLD, VIC, NSW, SA & TAS.
Formatted as a HTML table on a website.


Transform

Storm-Data transformation:
* remove duplicates
* remove blank columns
* remove all states and teritories except Vicoria
* change column headers to standardise columns referring the the state Victoria

Outages-Data transformation:
* remove duplicates
* remove blank columns
* joining all individual csv's into one dataframe
* remove all states and teritories except Vicoria
* change column headers to standardise columns referring the the state Victoria

Wind-Generators-Data transformation:
* remove all states and teritories except Vicoria
* change column headers to standardise columns referring the the state Victoria


Load

Chosen database is a Relational database, specificly PostgresSQL.
A relational database has been chosen to ensure the data is always meeting quality standards, to allow for ease of joing data for the analysis team, and beacause it suits the structured data format that the data comes in.
