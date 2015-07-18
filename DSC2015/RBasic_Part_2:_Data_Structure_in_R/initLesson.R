# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.
rm(list = ls())

pass <- function(){
	print("跳關囉!")
}

ans_date <- as.numeric(strsplit(format(Sys.Date(), "%Y-%m-%d"), "-")[[1]])
named_ans_date <- ans_date
names(named_ans_date) <- c("year", "month", "day")