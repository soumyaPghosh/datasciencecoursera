pollutantmean <-function(directory,pollutant,id=1:332)
{
  workfolder<-setwd(directory)
  fileslist <-list.files(".")
  i <-1
  x <-c()
  z<-1
  
  for(i in id)
  {
    data<-read.csv(fileslist[i],header = TRUE,sep=',')
    totalrow <-nrow(data)
    j <-1
   while (j <= totalrow)
    {
      
      x[z]<-data [j,pollutant]
      j<-j+1
      z<-z+1
     }
     
  }
  
  finalmean<-mean(x,na.rm=TRUE)
  
  print(finalmean)
}