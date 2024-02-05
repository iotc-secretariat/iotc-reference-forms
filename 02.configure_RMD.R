knitr::opts_chunk$set(
  echo = FALSE,
  tidy = TRUE,
  tidy.opts = list(width.cutoff = 60),
  size = 'small',
  
  tab.cap.pre = "Table ",
  tab.cap.sep = ". ",
  tab.cap.style ='Table Caption',
  
  fig.cap.style = "Caption label",
  fig.cap.pre = "Fig. ", 
  fig.cap.sep = ". ",
  
  fig.width   = 8,
  fig.height  = 4.5
)

knit_hooks$set(
  inline = function(x) {
    prettyNum(x, big.mark = "")
  }
)