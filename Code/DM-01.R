## [DM-01] R basics ##

# Start #
2 + 2

# Numeric vector #
x <- 1:10
x

# Character vector #
y <- c("Messi", "Neymar", "Cristiano")
y

# Factor #
z <- factor(y)
z

# Logical vector #
u <- x > 5
u

# Date and datetime #
d1 <- "2018-01-09"
d2 <- as.Date(d1)
d3 <- as.numeric(d2)
dt1 <- "2018-01-09 09:30:00"
dt2 <- as.POSIXlt(dt1)
dt3 <- as.numeric(dt2)

# Matrix #
A <- matrix(1:24, nrow=4)
A
A[2,3]

# Data frame #
df <- data.frame(v1=1:10, v2=10:1, v3=rep(-1,10))
df
df$v1

# Subsetting #
x[1:3]
x[x>=5]
A[1:2, 3:6]
df[, -3]
df[df$v1<df$v2, ]

# List #
L <- list(L1=1:10, L2=c("Messi", "Neymar", "Cristiano"), L3=matrix(1:25, nrow=5))
L[[1]]
L$L1

# Structure of an object #
str(x)
str(y)
str(z)
str(u)
str(A)
str(df)
str(L)

# Function (1) #
f <- function(x) 1/(1+x^2)
f(1)

# Function (2) #
weekDay <- function(day) {
  day <- as.Date(day)
  daysInterval <- day - as.Date("2018-01-07")
  daysInterval <- as.numeric(daysInterval)
  weekDayNumber <- daysInterval %% 7
  weekDay <- factor(weekDayNumber, levels=0:6,
    labels=c("Sun","Mon","Tue","Wed","Thu","Fri","Sat"))
  weekDay <- as.character(weekDay)
  return(weekDay)
}

# Repetition #
x <- NULL; for(i in 1:10) x[i] <- sqrt(i)
y <- sapply(1:10, sqrt)
z <- sqrt(1:10)
