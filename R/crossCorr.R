#' crossCorr function
#'
#' Calculate cross correlation for a SECRET.
#' @param SECRET data.frame
#' @return cross correlation object (deconvolveR) 
#' @export 
#' @examples
#' crossCorr()
crossCorr<-function(SECRET, plot=FALSE){
ccf(SECRET[,1], SECRET[,2], plot=plot, ci = 0.95)
}
