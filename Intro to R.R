data("iris")

# Viewing the dimensions of the data
dim(iris) # Keyboard Shortcut to run: cntrl + enter
# we have 150 rows and 5 columns

# to check the column names
names(iris)

# to get the info() of data
str(iris)
# Factor means the variable is categorical (Object)

# Alternative to df.head(), R gives us the first 6 rows
head(iris)
tail(iris)

# To view only the first 2 records, In python -> df.head(2)
head(iris, 2)
tail(iris, 3)

View(iris)

# Unlike Python, R starts indexing from 1 not 0
iris[1:3, ]
iris[1:4, 2: 4]

# In python -> df.column =  for column labels, df.index - row labels, 
# and df.axes - For viewing both column and rows labels
# In R to view both column name and row labels we use attributes(data)
attributes(iris)

# To axis certain columns, In R we use $ -> iris$Sepal.Length
iris$Sepal.Length
head(iris$Sepal.Length, 2)


# Display the first 10 values of Sepal.Length
head(iris$Sepal.Length, 10)
iris$Sepal.Length[1:10]
iris[1:10, 1]

# statistical summary
summary(iris)

# To install Packages
install.packages('Hmisc')
library(Hmisc)

# Now we can use describe
describe(iris)

# If you want statistical summary for only particular columns
# c(1,3) -> using combine we create a vector to get only first and third column
describe(iris[ , c(1, 3)])

fruits <- c('apple', 'banana', 'mango')
# Notice how when we use c, the integer gets converted to string
fruits2 <- c('apple', 'banana', 'mango', 0)


# To find range
range(iris$Sepal.Length)

# To find the quantiles
quantile(iris$Sepal.Length)

# to get 10%, 20%, 30% and so on
quantile(iris$Sepal.Length, c(0.1, 0.2, 0.3))

# To check for missing values
colSums(is.na(iris))


# Visualization
# Histogram
hist(iris$Sepal.Length)

# To find variance in the data
var(iris$Sepal.Length)

# For some visualization we need to first make a table and then do the visualization
table(iris$Species)
## Pie Chart
pie(table(iris$Species))
## Bar Chart
barplot(table(iris$Species))

# Boxplot for Sepal Length and petal length
boxplot(table(iris$Sepal.Length))
boxplot(table(iris$Petal.Length))



## BIVARIATE ANALYSIS
# col -> colour. For different colours
plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species)

with(iris,
     plot(Sepal.Length, Petal.Length, col = Species)
)

# pch -> for different shapes
with(iris,
     plot(Sepal.Length, Petal.Length, col = Species, pch = as.integer(Species))
)

# With Legend 
# aes -> aesthetic
library(ggplot2)
ggplot(iris,
       aes(Sepal.Length, Petal.Length, colour = Species)
       )+geom_point()
        

# Pairplot
pairs(iris)
