# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.
rm(list=ls())

test_library <- function(){
  swirl:::any_of_exprs("library(MASS)",
                      'library("MASS")',
                      "library('MASS')")
}

test_barplot <- function(){
  swirl:::any_of_exprs("barplot(table(Boston$medv))",
                       'barplot(table(Boston["medv"]))',
                       'barplot(table(Boston[,"medv"]))',
                       "barplot(table(Boston['medv']))",
                       "barplot(table(Boston[,'medv']))")
}

test_subset <- function(){
  swirl:::any_of_exprs("Medv_50 = subset(Boston, Boston$medv == 50)",
                       "Medv_50 = subset(Boston, Boston['medv'] == 50)",
                       'Medv_50 = subset(Boston, Boston["medv"] == 50)',
                       "Medv_50 = subset(Boston, Boston[,'medv'] == 50)",
                       'Medv_50 = subset(Boston, Boston[,"medv"] == 50)',
                       "Medv_50 <- subset(Boston, Boston$medv == 50)",
                       "Medv_50 <- subset(Boston, Boston['medv'] == 50)",
                       'Medv_50 <- subset(Boston, Boston["medv"] == 50)',
                       "Medv_50 <- subset(Boston, Boston[,'medv'] == 50)",
                       'Medv_50 <- subset(Boston, Boston[,"medv"] == 50)')
}

test_cut <- function(){
  swirl:::any_of_exprs('Boston$income_class <- cut(Boston$lstat, breaks = 3, label = c("L", "M", "H"))',
                       'Boston$income_class = cut(Boston$lstat, breaks = 3, label = c("L", "M", "H"))')
}