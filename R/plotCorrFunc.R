#' plotCorrFunc function
#'
#' 
#' @param plotCorrFunc() ccf object
#' @return ggplot2 object
#' @export 
#' @examples
#' plotCorrFunc()
plotCorrFunc<-function(ccf, pval){
ccf.df <- with(ccf, data.frame(lag, acf))
title=paste("CCF of MG_CTRL_01 * NEG_CTRL_01 (p-value=", format(pval, digits=4), ")")
ggplot(data=ccf.df, mapping=aes(x=lag, y=acf), main="Test") + geom_bar(stat = "identity", position = "identity", fill= "#DCBA30", colour="black") + geom_hline(yintercept=sig, linetype="solid", size=1.5, color = "red") + labs(title=title) + labs(x="Tau", y="CCF (g)")
}
