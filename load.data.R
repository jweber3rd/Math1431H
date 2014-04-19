load.data <- function(file)
  {
	if(file.exists(file)==TRUE) {
	read.csv(file,header=T)
	}	
	else {
	URL <- "http://www.jjw3.com/"
	PATH <- "R/data/"
	download.file(paste(URL,PATH,sep="",file), file, mode="wb")
	read.csv(file,header=T)
	}
   }
