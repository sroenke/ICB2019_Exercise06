#part1
#Header function: enables printing a specified number of rows

Header<-function(dataa,y){ 
  

  rows<-dataa[1:y,]
  
return(rows)
  
}





#part 2
irisdata<-read.csv("iris.csv")
#storing diminsions of file
myrows<-nrow(irisdata)
mycol<-ncol(irisdata)
#printing last 2 rows in the last 2 columns
irisdata[(myrows-1):myrows,(mycol-1):mycol]
#finds each species name
specieslist<-unique(irisdata[,5])
#gets rid of the levels(which I don't know what they are)
specieslist2<-as.character(specieslist)

#finding matches and counting them, couldn't figure out how to automate this
"setosa"<-subset(irisdata,irisdata$Species=="setosa")
(setosa_count<-nrow(setosa))
"versicolor"<-subset(irisdata,irisdata$Species==specieslist2[2])
(versicolorcount<-nrow(versicolor))
"virginica"<-subset(irisdata,irisdata$Species==specieslist[3])
(virginicacount<-nrow(virginica))


#returns rows with sepal.width>3.5 and saves in 'sepalwidth3.5'
(sepalwidth3.5<-subset(irisdata,irisdata$Sepal.Width>3.5))

#writes data for setosa into 'setosa.csv'(seperated by commas is default for write.csv)
write.csv(setosa,"setosa.csv")

#finds mean petal length
mean(virginica$Petal.Length)
#finds min petal length
min(virginica$Petal.Length)
#finds max petal length
max(virginica$Petal.Length)

