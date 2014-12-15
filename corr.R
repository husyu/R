corr <- function(directory, threshold = 0) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0
        
        ## Return a numeric vector of correlations
        c.nobs <- complete(directory)
        corr.list <- subset(c.nobs,nobs > threshold)
        result <- 0
        for (i in corr.list$id) {
                if (i < 10) {
                        fileN <- paste("00",i,sep="")
                } else if (i < 100){
                        fileN <- paste("0",i,sep="")
                } else {
                        fileN <- paste("",i,sep="")
                }
                path <- paste("C:\\Users\\HB17671\\Downloads\\Code\\R\\",directory,"\\",fileN,".csv",sep="")
                x <- read.csv(path)
                
                result <- c(result,round(cor(x$nitrate,x$sulfate,use="complete.obs",method = "pearson"),digits = 5))
        }
        result <- result[-c(1)]
        result

}
