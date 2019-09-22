#' calcCCF_Pvalue function
#'
#' Calculate crossCorr() p-value.
#' @param crossCorr() data.frame
#' @return numeric
#' @export 
#' @examples
#' calcCCF_Pvalue()
calcCCF_Pvalue=function(df=ccf.df) {
2 * (1 - pnorm(abs(sort(df$acf,decreasing=TRUE)[1]), mean = 0, sd = 1/sqrt(df$n.used)))
}

