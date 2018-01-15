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

#### Assignments

2. The file `soybean.xls` contains data on prices of soybean **futures contracts**, from the Chicago Board of Trade (columns `D` to `DB`). The series of dates for which the contract is in force is shorter than the period covered by the data. Produce a new table (3048 x 103), by replacing every price by its **tenor**, that is, the number of days before the contract expires, putting `NA` in every cell that is empty in the original data set.
