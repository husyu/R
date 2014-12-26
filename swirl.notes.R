my_seq <- seq(5, 10, length=30)
1:length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)
rep(0, times = 40)
rep(c(0, 1, 2), times = 10)
rep(c(0, 1, 2), each = 10)
my_char <- c("My", "name", "is")
paste(my_char, collapse = " ")
head(x)
lapply
sapply
as.character(cls_list)
unique
POSIXct
POSIXlt
unclass
as.Date
Sys.date
Sys.time
weekdays
months
quarters
t3 <- "October 17, 1986 08:24"
as.POSIXlt()  == strptime(t3, "%B %d, %Y %H:%M")
difftime()
