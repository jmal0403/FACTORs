#' crossCorr function
#'
#' Calculate cross correlation for two SECRETs.
#' @param SECRET data.frame
#' @return cross correlation object (deconvolveR) 
#' @export 
#' @examples
#' crossCorr()
crossCorr<-function(df=SECRET.df, plot=to.plot){
ccf(df$M1_SECRET, df$MG_CTRL_01, plot=plot, ci = 0.95)
}

