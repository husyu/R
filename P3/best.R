setwd("~/R_code/P3")
#outcome <- read.csv("outcome-of-care-measures.csv")
# hospital <- read.csv("hospital-data.csv")

best <- function(state, outcome){
        ## Read outcome data
        
        outcome.data <- read.csv("outcome-of-care-measures.csv")
        # hospital <- read.csv("hospital-data.csv")        
        
        
        ## Check that state and outcome are valid
        outcome.statelist <- unique(outcome.data$State)
        outcome.colnames <- colnames(outcome.data)
        
        check.count <- 0
        state.check <- 0
        outcome.check <- 0
        for ( i in 1:length(outcome.statelist)){
                if (state == outcome.statelist[i]){
                        state.check <- 1
                        check.count <- check.count + 1
                        break
                }
        }
        if (!state.check){
                #check.count
                
                retrun(cat("Error in best(\"",state,"\",\"",outcome,"\") : invalid state",sep = ""))
                
        }
        for ( i in 1:length(outcome.colnames)){
                if (outcome == outcome.colnames[i]){
                        outcome.check <- 1
                        break
                }
        }
        if (!outcome.check){
                
                return(cat("Error in best(\"",state,"\",\"",outcome,"\") : invalid outcome",sep = ""))
        }
        

        ## Return hospital name in that state with lowest 30-day death rate
        
        
}