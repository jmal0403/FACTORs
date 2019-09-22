#' plotCorrFunc function
#'
#' 
#' @param crossCorr() data.frame
#' @return bool
#' @export 
#' @examples
#' plotCorrFunc()
plotCorrFunc<-function(ccf){
ccf.df <- with(ccf, data.frame(lag, acf))
ggplot(data=ccf.df, mapping=aes(x=lag, y=acf, colour="#000099"
)) + geom_bar(stat = "identity", position = "identity") + geom_hline(yintercept=sig, linetype="dashed", color = "red")
}

