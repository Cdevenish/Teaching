readLabels <- function(x, type = c("Audacity", "Raven"), rename = T){
  
  # x are file paths to label text files
  # type is software used to create labels
  
  type <- match.arg(type)
  
  labs.df <- switch(type, 
                    
                    Audacity = lapply(x, function(y) {
                      
                      labs <- read.table(y, header = F, sep = "\t", stringsAsFactors= F)
                      
                      e.ind <- seq(2,nrow(labs),2)
                      o.ind <- seq(1,nrow(labs),2)
                      
                      res <- cbind(labs[o.ind,], labs[e.ind, 2:3]) 
                      colnames(res) <- c("start", "stop", "name", "minFreq", "maxFreq")
                      res <- data.frame(id  = basename(y), 
                                        name = res$name, 
                                        lapply(res[-3], as.numeric), 
                                        stringsAsFactors = F)
                    }),
                    Raven = stop("Not implemented yet")
  )
  
  res <- do.call(rbind, labs.df)
  
  ## Check minFreq maxFreq and timings.
  
  
  
  # rename duplicate template names and keep original
  if(rename) {
    
    res <- res[order(res$name),]
    
    # check that names are dupicated
    if(any(duplicated(res$name))) {
      res$original <- res$name
      
      rn <- lapply(split(res$name, res$name), function(x) {
        sapply(seq_along(x), function(y) paste(unique(x),y, sep ="_"))
      })
      res$name <- unname(unlist(rn))
    }
  }
  
  res
  
}
