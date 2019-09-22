#' calcSignificanceLevel function
#'
#' Calculate signficance threshold for crossCorr().
#' @param SECRET data.frame
#' @return numeric
#' @export 
#' @examples
#' calcSignificanceLevel()
calcSignificanceLevel<-function(df=SECRET.df){
2/(sqrt(nrow(df)))
}

