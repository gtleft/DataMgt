### [DataMgt-01] R and Python basics

#### Interfaces

- Console/Shell

- Integrated Development Environment (IDE)

- Markdown

- Notebook

#### Installation

- RStudio

- Anaconda, IPython and Jupyter

#### Essential objects

- Vectors

- Lists

- Functions

#### Data types:

- Numeric

- Character

- Factor

- Logical

- Date and datetime

#### Packages

- R packages

- Python packages

#### n-dimensional objects

- Matrices

- Data frames

#### Repetition

- `for` loops

- `apply` methods

- Vectorization

#### Tidy code

- Structure

- Comments

- Short and suggestive names

#### Assignments

1. With the function `sample` we can extract random samples from a given set, with or without replacement. For instance, with
  `x <- sample(c("H","T"), size=1000, replace=T)`
we can simulate a sequence of 1,000 coin tosses. Create a function that measures the length of longest run of heads in a sequence of coin tosses. How is the sampling distribution of this statistic?

2. For a pair of positive integers `x` and `y`, we can get the reminder of the division of `x` by `y` by doing `x %% y`. Exploit this to create a function that checks whether a positive integer is prime (i.e. it returns `TRUE` for primes and `FALSE` for composites).

3. For any positive integer `n`, the polynomial `x^n + x - 1` has a root in the interval `[0, 1]`. You can check this, for instance, for `n = 4`, creating
  `x <- seq(0, 1, by=0.001)`,
which is a partition of the interval into 1,001 subintervals, defining
  `y <- x^4 + x - 1`
and plotting with
  `plot(y ~ x, type="l")`.
Create a function of `n` that returns the root of the polynomial, up to the third digit.

#### Readings

1. R Kabacoff (2011), *R in Action*, Manning.

2. J VanderPlas (2016), *Python Data Science Handbook*, O'Reilly.
