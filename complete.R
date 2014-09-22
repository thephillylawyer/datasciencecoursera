complete <- function(directory, id=1:332){
  files_list <<- list.files(directory, full.name=TRUE)
  dat <<- data.frame()
  nobs <<- data.frame()
  dat_subset <<- data.frame()
  for(i in id){
    dat <<- rbind(dat, read.csv(files_list[i]))
    nobs <<- nrow(na.omit(dat))
   }
     for(i in id){
        nobs <<- nrow(na.omit(dat))
        dat_subset <<- rbind(id, nobs)
    }
  #    dat_subset <<- cbind(id, nobs)
  #    nobs <<- nrow(na.omit(dat))
  #   dat_subset <<- sum(complete.cases(dat))
  #    dat_subset <<- cbind(id, nobs)
  
#  dat_subset <<- cbind(id, nobs)
dat_subset
}
