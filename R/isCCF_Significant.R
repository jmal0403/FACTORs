#' isCCF_Significant function
#'
#' 
#' @param crossCorr() data.frame
#' @return bool
#' @export 
#' @examples
#' isCCF_Significant()
isCCF_Significant<-function(ccf.df, x=sig){
if (apply(sig.df, 2, function(x) any(is.na(x)))){
   FALSE
}
else {
apply(ccf.df$acf, MARGIN = c(1,2), function(x) x >= ccf.df$acf[[1]])
}}


