## [DataMgt-02] Code for class ##

# Text files #
url1 <- "https://raw.githubusercontent.com/cinnData/DataMgt/master/Data/"
url2 <- "turnover.csv"
url <- paste(url1, url2, sep="")
df <- read.table(url, header=T, sep=",", stringsAsFactors=F)
str(df)
write.table(df, file="F:/turnover.csv", sep=",", row.names=F)

# CSV files #
df <- read.csv(url, stringsAsFactors=F)
write.csv(df, file="F:/turnover.csv", row.names=F)

# Stata files (old versions) #
library(foreign)
df$salary <- as.factor(df$salary)
str(df)
write.dta(df, file="F:/turnover.dta")
df <- read.dta("turnover.dta")
str(df)

# SPSS files #
library(foreign)
dfsurvey <- read.spss("F:/survey.sav", to.data.frame=T)
str(dfsurvey[, 1:25])
df <- read.dta()

# Excel files (only reading) #
library(readxl)
df <- read_excel("F:/turnover.xls")
str(df)
df <- as.data.frame(df)
str(df)

# Exploring the data #
url1 <- "https://raw.githubusercontent.com/cinnData/DataMgt/master/Data/"
url2 <- "turnover.csv"
url <- paste(url1, url2, sep="")
df <- read.table(url, header=T, sep=",", stringsAsFactors=F)
dim(df)
head(df)
tail(df)

# Summaries #
apply(df, 2, function(x) sum(is.na(x)))
summary(df)

# Function table #
table(df$dept)
sort(table(df$dept), decreasing=T)
barplot(sort(table(df$dept), decreasing=T))
table(df$dept, df$salary)

# Function tapply #
tapply(df$left, df$salary, mean)
tapply(df$left, df$dept, mean)
barplot(tapply(df$left, df$salary, mean))
sort(tapply(df$left, df$dept, mean), decreasing=T)
barplot(tapply(df$left, df$dept, mean))

# Correlation matrix #
cor(df[, 1:8])
round(cor(df[, 1:8]), 2)

# Histogram #
hist(df$eval)

# Scatterplot #
plot(eval ~ hours, data=df)
