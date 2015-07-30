# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

height_khalifa <- 830

test_is_age <- function(var){
  return(is.numeric(var) && var > 0)
}

test_logical <- function(var){
  return(is.logical(var))
}

test_101 <- function(){
  any_of_exprs("height_101 = 509",
               "height_101=509",
               "height_101 =509",
               "height_101= 509")
}

test_higher <- function(){
  any_of_exprs("is_higher = height_101 > height_khalifa",
               "is_higher=height_101 > height_khalifa",
               "is_higher=height_101>height_khalifa",
               "is_higher = height_101>height_khalifa",
               "is_higher <- height_101 > height_khalifa",
               "is_higher<-height_101 > height_khalifa",
               "is_higher<-height_101>height_khalifa",
               "is_higher <- height_101>height_khalifa")
}