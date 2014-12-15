pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
       
        
        if (pollutant != "nitrate" && pollutant != "sulfate") {
                print("Need to pick 'nitrate' or 'sulfate' for 'pollutant'")
                ## return()
                ## stop()
        }else{
        
                x <- data.frame(date = character(0), sulfate = numeric(0), nitrate = numeric(0), ID = integer(0))
                
                for (i in id) {
                        if (i < 10) {
                                fileN <- paste("00",i,sep="")
                        } else if (i < 100){
                                fileN <- paste("0",i,sep="")
                        } else {
                                fileN <- paste("",i,sep="")
                        }
                        
                        path <- paste("~/R_code/",directory,"/",fileN,".csv",sep="")
                        x <- rbind(x,read.csv(path))
                        ## View(x)
                        
                }
                y <- x[,pollutant]
                takeout <- is.na(y)
                ## View(y[!takeout])
                #return (format(mean(y[!takeout]),digits=4))
                return (round(mean(y[!takeout]),digits=3))
        }
}
