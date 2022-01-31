---
output:
  html_document: default
  pdf_document: default
---
# Assignment 1

The Source of the Dataset : https://www.kaggle.com/yasserh/housing-prices-dataset

**part1**

Importing data set

```{r}
Housing <- read.csv("C:/Users/Dell/Desktop/Housing.csv")
View(Housing)
```

**part2**


Descriptive statistics for Quantitative Variables

```{r}
summary(Housing)
 mean(Housing$price)
 sd(Housing$price)
 var(Housing$price)
 min(Housing$area)
 max(Housing$area)
 median(Housing$bedrooms)
```
 
 
 
 Descriptive statistics for categorical variables:
   
```{r}
 Housing$hotwater
 table(Housing$hotwater)
 hotwater_table <- table(Housing$hotwater)
 hotwater_table
 prop.table(hotwater_table)
 
 Housing$parking
 table(Housing$parking)
 parking_table <- table(Housing$parking)
 parking_table
 prop.table(parking_table)

library(gmodels)
CrossTable(Housing$mainroad,Housing$furnishingstatus)
CrossTable(Housing$mainroad,Housing$guestroom)

library("Hmisc")
describe(Housing$guestroom)
describe(Housing$mainroad)

```

**part3**

Transformation of variables

```{r}
log(Housing$price)

 Housing$price_ztransformed = Housing$price-mean(Housing$price)/sd(Housing$price)

 Housing$price_ztransformed
```
  
**part4**
   
   
```{r} 
 plot(Housing$price)
 plot(Housing$area,Housing$bedrooms)
 hist(Housing$area)
 library(ggplot2)
 ggplot(Housing,aes(x=price,y=area))+geom_point()
 
```
