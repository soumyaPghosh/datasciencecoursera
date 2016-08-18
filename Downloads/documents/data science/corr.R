corr<-function(directory,threshold=0)
{
  
  workfolder<-setwd(directory)
  fileslist <-list.files(".")
  reqdata<-complete(directory,1:332)
  i<-1
  j<-1
  x<-c()
  y<-c()
  finalresult<-c()
 ## print(reqdata)
  while (i <= nrow(reqdata))
  {
   print(reqdata$nobs[i])
    if (as.numeric(reqdata$nobs[i]) > threshold)
    {
      print("in if loop")
      wholedata <-read.csv(as.character(reqdata$id[i]))
      ## print(wholedata)
      use <-complete.cases(read.csv(as.character(reqdata$id[i])))
      ## print(use)
      data <-wholedata[use,][,1:4]
      ##print(data)
      x <-data$sulfate
      y <-data$nitrate
      
      ## print(x)
      ## print(y)
      finalresult[j] <- cor(x,y)
      j<-j+1
      
      ## print(finalresult)
    }
    i<-i+1
  }
  
 print(finalresult)
  
}