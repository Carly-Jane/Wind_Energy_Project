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

Extract

Source Of Data:
* Data alias: Storm-Data
http://www.bom.gov.au/australia/stormarchive/ (date range 1/1/2010 to 1/1/2021)
Includes all storm data on all states and teritories.
Formatted as a CSV file.
For additional clarity, please note; this file contains a column named 'Event_ID' and another column named 'ID'. The 'Event_ID' indicates a weather event, such as a large storm(for example, Event_ID 103 could indicate a storm in Melbourne that lasted 3 hours), and the 'ID' indicates multiple reports of weather in each weather event (such as a broken window from storm 103, hail sightings from storm 103 and a fallen tree from storm 103). 
![Images\BOM.PNG](Images\BOM.PNG)

* Data alias: Outages-Data
http://nemweb.com.au/Reports/Current/HighImpactOutages/ (date range 30/8/2021 to 6/6/2022)
Includes all High Impact Outage data on existing wind farms in all states and teritories.
Formatted as a CSV file.
All individual CSVs have now been combined into just one to lead it into the database
For additional clarity, please note; NSP stands for Network Service Provider
![Images\HIO.PNG](Images\HIO.PNG)

* Data alias: Wind-Generators-Data
https://anero.id/energy/wind-energy  (data accurate as of 13/6/2022)
Includes summary of Redistered Wind Generators in QLD, VIC, NSW, SA & TAS.
Formatted as a HTML table on a website.
![Images\VIC.PNG](Images\VIC.PNG)

* Data alias: Australian-States-Data
https://www.abc.net.au/education/learn-english/commonly-used-abbreviations-and-acronyms-in-australia/10733416  (data accurate as of 16/6/2022)
Includes all Australian states and teritories and their acronyms
Formatted as a HTML table on a website.
![Images\STATES.PNG](Images\STATES.PNG)



Transform

Storm-Data transformation:
* remove duplicates
* remove blank columns
* remove all states and teritories except Vicoria
* change column headers to standardise columns referring the the state Victoria
* check for double up of event IDs single ID duplicates

Outages-Data transformation:
* remove duplicates
* remove blank columns
* joining all individual csv's into one dataframe
* remove all states and teritories except Vicoria
* change column headers to standardise columns referring the the state Victoria

Wind-Generators-Data transformation:
* remove all states and teritories except Vicoria
* change column headers to standardise columns referring the the state Victoria

Australian-States-Data
* very basic and small dataset, required no cleaning


Load

Schema
![Images\RelationalDatabaseSchema.PNG](Images\RelationalDatabaseSchema.PNG)

Chosen database is a Relational database, specificly PostgresSQL (pgAdmin 4).
Schema file: Wind_Energy_Database.sql
CSV's to load into SQL database: vic_summary.csv, states.csv, BOM_Storm_Data.csv & High_Impact_Outages_Full_data.csv
A relational database has been chosen to ensure the data is always meeting quality standards, to allow for ease of joing data for the analysis team, and beacause it suits the structured data format that the data comes in.
