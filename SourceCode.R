#=======================================
#Source Code for Group Assignment 4
#Authors: Noah Angara, Giovanni Magagnin
#December 2020
#=======================================
library(ggplot2)
library(xts)
library(dplyr)
library(fBasics)
library(timeSeries)
library(PerformanceAnalytics)
library(quantmod)
library(NMOF)
library(stats)
library(tseries)
library(reshape2)
library(glmnet)
library(corrplot)

## New packages
library(rpart)
library(rpart.plot)

## Loading Data
load("drugs.RData")

## 1) Share of Males who consume soft drugs
nrow(drugs[drugs$Gender == "male"& drugs$Soft_Drug == "TRUE",])/nrow(drugs)

## 2) Difference between male and female hard drug consumption
male_hard <- nrow(drugs[drugs$Gender == "male"& drugs$Hard_Drug == "TRUE",])/nrow(drugs)
female_hard <- nrow(drugs[drugs$Gender == "female"& drugs$Hard_Drug == "TRUE",])/nrow(drugs)
male_hard - female_hard

## 3) Share of soft drug consumption by age group
sixt_sevent <- nrow(drugs[drugs$Age == "16-17 years" & drugs$Soft_Drug == "TRUE",])/nrow(drugs)
eight_nine <- nrow(drugs[drugs$Age == "18-19 years"& drugs$Soft_Drug == "TRUE",])/nrow(drugs)
twent_twent4 <- nrow(drugs[drugs$Age == "20-24 years"& drugs$Soft_Drug == "TRUE",])/nrow(drugs)

