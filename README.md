## Files
* [Database](https://github.com/L0per/ETL_project/tree/master/database)
  ![ERD](https://github.com/L0per/ETL_project/blob/master/database/ERD_img.png?raw=true)
  * `overdoese_pres_ETL.sql` = PostgreSQL database containing all final data
  * `schema.sql` = Table schema for loading data `.csv` files
* [Prescriptions](https://github.com/L0per/ETL_project/tree/master/prescriptions)
  * `prescriptions.ipynb` = Notebook for transforming raw prescription data **NOTE:** The raw prescription data is too large to upload here, but can be downloaded [here](https://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Part-D-Prescriber)
  * `prescriptions.csv` = `.csv` output of pandas dataframe of transformed data
  * `ZIP-COUNTY-FIPS_2018-03.csv` = Raw zip-county dataset from [here](https://data.world/niccolley/us-zipcode-to-county-state)
  * `county_FIPS.csv` = Zip-county dataset containing unique county FIPS code rows, used for adding counties to the prescription data and relating tables in the SQL database
* [Overdoses](https://github.com/L0per/ETL_project/tree/master/overdoses)
  * `mcd_usa.ipynb` = Notebook for transforming raw overdose data
  * `raw_data` = Raw overdose data, refer to notebook for details.
  * `overdoses.csv` = `.csv` output of pandas dataframe of transformed data
