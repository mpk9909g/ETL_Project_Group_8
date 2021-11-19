## ETL PROJECT GROUP 8

- Feipeng Yang
- Jim Hurley
- Matt Keeley


## INTRODUCTION

Have you ever wondered whether or not air quality of a given location is in any way associated with the value and marketability of you home?  The data derived from this project is designed to provide a data set by which to make such an analysis.

The project, sponsored by Group 8, enables the analyst to extract air quality data provided by the Environmental Protection Agency (by way of the Kaggle site) and real estate data provided by RealEstate.com Economic Research.  The data is provided in the Resources section of the repo: ``RDC_Inventory_Core_Metrics_Count.csv`` and  ``aqi_yearly_1980_to_2021.csv``. 

An additional file, ``state_abbreviation.csv``, is provided which provides U.S. State Name to State Abbreviation equivalents to assist in data transformation.
Once the ETL process had been successfully completed the data will be ready for viewing, sorting, correlation or other analysis.



## BEFORE YOUR BEGIN
1.	Create a new repository for this project called **etl_analysis**. Do not add this homework to an existing repository.
2.	Clone the new repository to your computer.
3.	Inside your local git repository, create a directory for the **etl_analysis**. Use a folder name to correspond to the challenge: **etl_analysis**.
4.	Add your completed notebook files to this folder as well as your flask app.
5.	Push the above changes to GitHub.
6.	Be aware that the Jupyter Notebook you will be using, ``pandas_etl.ipynb``, will contain a technical overview and specific insturction on how to accomplish the tasks below.  Description and directions here are meant to provide managerial level instruction.



## Step 1 - EXTRACT
1.	A starter Jupyter Notebook, ``pandas_etl.ipynb`` has been provided for your reference.
2.	Extract the data from the ``aqi_yearly_1980_to_2021.csv`` file
3.	Extract the data from the ``RDC_Inventory_Core_Metrics_County.csv`` file
4.	Read the data from the files into dataframes



## STEP 2 – TRANSFORM

### TRANSFORM AIR QUALITY DATA
When completed, the transformed air quality data will have the following form:
1.	Keep only the  “State”, “County”, “Year”, and “Median AQI” columns.
2.	Filter the data on year = 2021.
3.	In order to conform later to SQL norms, convert all column titles to lower case form.  Replace any spaces in the column titles with underscores.
4.	Use the index as an **“id”** column.

### TRANSFORM LISTINGS DATA
When completed, the transformed real estate listings data will have the following form:
1.	_Columns:_ **"month_date_yyyymm"**, **"county_name"**, **"total_listing_count"**, **"average_listing_price"**, **"median_listing_price", "active_listing_count", "median_days_on_market"**
2.	Split County and State names into separate columns.
3.	In order to conform later to SQL norms, convert all column titles to lower case form.  Replace any spaces in the column titles with underscores.
4.	Read the ``state_abbreviation.csv`` file into a dataframe, merge it with the listing dataframe, and reorganize and/or rename the columns to ensure the full state name is included in the listings dataframes (as it is in the air quality dataframe).  
5.	Transform index name to a column with the name of **“id”**


## STEP 3 – LOAD

### LOAD DATA INTO DATABASE
1.	Create a connection in postgresSQL and initiate a database called ``realestate_db``
2.	In postgresSQL create two tables: “listings” and **“air_quality”** and save the initializing querly as schema.sql
3.	Remember to establish the **“id” as the primary key in both tables**
4.	Load the Air Quality dataframe into the **“air_quality"** database. 
5.	Load the Listings dataframe into the **“listings”** database. 
6.	In a file named **query.sql** join both tables together according to state and county identifiers.

When completed you will have a unified table that provides air quality data for each real estate listing in the table.
