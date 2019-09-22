#' isCCF_Significant function
#'
#' 
#' @param crossCorr() data.frame
#' @return bool
#' @export 
#' @examples
#' isCCF_Significant()
isCCF_Significant<-function(df=ccf.df){
apply(ccf.df.01$acf, MARGIN = c(1,2), function(x) x >= ccf.df.01$acf[[1]])
}

