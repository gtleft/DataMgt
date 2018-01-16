## [DataMgt-02] Exploratory Data Analysis

#### read/write functions

- `read.table` and `write.table`

- Stata (`foreign` package), only old versions

- SPSS  (`foreign` package)

- RStudio packages for importing data sets: `readr`, `readxl`, `haven`

- DBI packages for SQL databases: `DBI`, `RSQLite`, `RMySQL`, `RPostgreSQL`

#### Some super useful functions

- `is.na`

- `unique`

- `table`

- `tapply`

- `cor`

- `hist`

- `plot`

#### Readings

1. MJ Crawley (2012), *The R Book*, Wiley. Free access at `ftp://ftp.tuebingen.mpg.de/pub/kyb/bresciani/Crawley%20-%20The%20R%20Book.pdf`.

2. RI Kabacoff (2010), *R in Action*, Manning. Free access at `http://kek.ksu.ru/eos/DataMining/1379968983.pdf`.

3. H Wickham & G Grolemund (2016), *R for Data Science*, O'Reilly. Free access at `http://r4ds.had.co.nz`.

#### Assignment

In the San Francisco Bay area, real estate sales are published in the newspapers once a week. To produce an example for his book, J Adler prepared a data set by compiling information from multiple papers. The data were picked as an example to address some questions about the way real estate data are reported in the media. It is a real data set, so it is not clean, and there are many missing values. We want to know a little more about real estate prices. For instance, a typical question of interest would be: Is there a premium for bedrooms (above square footage)? Real estate sales listings were downloaded from San Francisco Bay area newspapers websites (a spider was used to grab and parse the data). Then, longitude and latitude were obtained for each street from web services. The geographic coordinates allowed downloading neighbourhood data from the Zillow API (`http://www.zillow.com/howto/api/APIOverview.htm`). 

The data set (file `frisco.csv`) is related to the two-year historical log corresponding to years 2011 and 2012 (17 months of data). It contains 3,281 observations and variables. Among them: (a) the street address for the property (`street`), (b) the ZIP code for the property (`zip`), (c) the approximate date on which the the sale was recorded (`saledate`), (d) the sales price for the property (`price`), (e) a count of the number of bedrooms (`bedrooms`), (f) the interior space in square feet (`squarefeet`), (g) the lot size in square feet (`lotsize`), (h) the year in which then property was built (`yearbuilt`), (i) an attribute derived from the street, also signalled by the presence of a '#' in the variable `street`, indicating if the address was qualified by a unit number (`condolike`), and (j) the geographic coordinates for the property (`latitude`, `longitude`).

This data set presents many problems which are typically found by data collectors, such as missing values, duplicates, redundancies or irrelevant information. The task is to produce a new, clean data set, ready to be used to obtain a meaningful linear regression model that predicts the sale price in terms of (some of) the available attributes.

Source: J Adler (2012), *R in a Nutshell*, O'Reilly.


