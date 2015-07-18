# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.
all_pass <- function(){
	return(TRUE)
}

ans_date <- as.numeric(strsplit(format(Sys.Date(), "%Y-%m-%d"), "-")[[1]])
named_ans_date <- ans_date
names(named_ans_date) <- c("year", "month", "day")
ans_list <- list('1', 2, 3)

test_mat_exp1 <- function(){
	any_of_exprs('my_mat <- matrix(c(1:15), 3, 5)', 
		         'my_mat<-matrix(c(1:15), 3, 5)', 
		         'my_mat <-matrix(c(1:15), 3, 5)', 
		         'my_mat<- matrix(c(1:15), 3, 5)', 
		         'my_mat=matrix(c(1:15), 3, 5)', 
		         'my_mat =matrix(c(1:15), 3, 5)', 
		         'my_mat= matrix(c(1:15), 3, 5)',
		         'my_mat = matrix(c(1:15), 3, 5)')
}

test_mat_exp2 <- function(){
	any_of_exprs('my_mat[1:3, 3:5]',
		         'my_mat[1:3,3:5]',
		         'my_mat[c(1:3),c(3:5)]',
		         'my_mat[c(1:3), c(3:5)]')
}

test_heter_vec <- function(){
	any_of_exprs("vec = c('1', 2, 3)", 
		         "vec = c('1',2, 3)",
		         "vec = c('1', 2,3)",
		         "vec = c('1',2,3)",
		         'vec = c("1", 2, 3)',
		         'vec = c("1",2, 3)',
		         'vec = c("1", 2,3)',
		         'vec = c("1",2,3)'
		         )
}
