complete <- function(directory, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        ## Return a data frame of the form:
        ## id nobs
        ## 1 117
        ## 2 1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
        #result <- data.frame( id1 = integer(0), nobs = numeric(0))
        row <- 1
        idid <- 0
        nobs <- 0
        for (i in id) {
                if (i < 10) {
                        fileN <- paste("00",i,sep="")
                } else if (i < 100){
                        fileN <- paste("0",i,sep="")
                } else {
                        fileN <- paste("",i,sep="")
                }
                path <- paste("C:\\Users\\HB17671\\Downloads\\Code\\R\\",directory,"\\",fileN,".csv",sep="")
                x <- read.csv(path)

                #result$id[row] <- i
                #result$nobs[row] <- sum(complete.cases(x))
                #result$nobs[row] <- nrow(na.omit(x))
                idid <- c(idid,i)
                nobs <- c(nobs,nrow(na.omit(x)))
                row <- row+1
        }
        idid = idid[-c(1)]
        nobs = nobs[-c(1)]
        result <- data.frame(id = idid,nobs = nobs)
        #result1 <-result[-1,]
        result
}
