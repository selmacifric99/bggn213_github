### OPTIONAL HW Lab 4
source("http://thegrantlab.org/misc/cdc.R")
View(cdc)
head(cdc$height)
plot(cdc$height, cdc$weight,
     xlab = "Height (pounds)" ,
     ylab = "Weight (inches)")
cor(x=cdc$weight, y = cdc$height, method = c("pearson"))
hist(cdc$weight)
hist(cdc$height)

# Create height.m and weight.kg
height_m <- cdc$height * 0.0254
weight_kg <- cdc$weight * 0.454

# Create BMI object
bmi <- weight_kg/(height_m^2)
plot(height_m, bmi)
plot(cdc$height, bmi)

cor(x=cdc$height, y=bmi, method=c("pearson"))

# Note that I only have patience to print out the first 100 entries here
head(bmi >= 30, 100)
eg <- c(TRUE, TRUE, FALSE, FALSE)
sum(eg)

sum(bmi >= 30)
print(bmi)
max(bmi)

plot(cdc$height[1:100], cdc$weight[1:100],
     xlab = "Height (inches)" ,
     ylab = "Weight (pounds)")

typeof(bmi)
is.vector(bmi)

# How many individuals are obese men?

#In gender column, which individuals are obese?
cdc$gender[bmi >= 30]
#sort them out based on their gender notations
table(cdc$gender[bmi >= 30])


